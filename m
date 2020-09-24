Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB62F277BA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 00:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E12220243;
	Thu, 24 Sep 2020 22:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7vn-lKSnJPsX; Thu, 24 Sep 2020 22:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9AA252033D;
	Thu, 24 Sep 2020 22:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA14C1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 22:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0C7286C5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 22:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yF7BzV4J-JdN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 22:28:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 19D3586B72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 22:28:06 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E88A221EB;
 Thu, 24 Sep 2020 22:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600986485;
 bh=WeA89t8adCxfN/0OUGWVZYy6Au70JX/nzkj60NX0Bg8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PQRQk2q2uj7VBO8d3tgxA7qABhEzFaVVaTNV833hvJZSw9RWyqMO4x8J1/IVUS4Hr
 Ubya5c8AsUFsAZe7Znl7Nv7DxMJqZdkIW88tQR+m7gqxFXVDV9EpFeOg4KVYC5Lrdn
 Vqtq2vUTFeyucdGFn2rJQcYFtyYH/HIX1uhp09+w=
Date: Thu, 24 Sep 2020 15:28:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20200924152803.00b675b4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <808d485e3d63a2e10f1fba75c0cac968d8f844aa.camel@intel.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <20200722012716.2814777-5-kuba@kernel.org>
 <SN6PR11MB2896F5ACC5A59F7F330183FFBC3C0@SN6PR11MB2896.namprd11.prod.outlook.com>
 <20200921144408.19624164@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <808d485e3d63a2e10f1fba75c0cac968d8f844aa.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/7] selftests: net: add a
 test for shared UDP tunnel info tables
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 24 Sep 2020 22:25:46 +0000 Nguyen, Anthony L wrote:
> On Mon, 2020-09-21 at 14:44 -0700, Jakub Kicinski wrote:
> > Ah, good catch, thanks! Please adjust in your tree or I can send a
> > follow up with other patches I still have queued.  
> 
> Hi Jakub,
> 
> It'd be great if you could adjust and resend the series. As we're still
> working through our email server issue, I don't know if everything
> would make it here.

No problem, I'll add Aaron's tags and resend. Thanks!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
