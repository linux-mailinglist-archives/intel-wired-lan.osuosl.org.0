Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85C329637
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 06:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B60E1827A9;
	Tue,  2 Mar 2021 05:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7AohJh-bIAxD; Tue,  2 Mar 2021 05:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF16182771;
	Tue,  2 Mar 2021 05:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 617451BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 05:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D10B4EF49
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 05:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYFo29Y8xrJG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 05:27:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E5D24EF47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 05:27:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6321560241;
 Tue,  2 Mar 2021 05:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614662863;
 bh=5F27m4NsFLCUr7CLSJiPMlsnMXQ+sltkofLgIHPnvGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sNq9+65I1HXIDlREZBMnYg0SwjfK3umjU/oEuXmJs9hYOtNenvsnkGQhqdAarWTUE
 jONksSscb8Hoc6fMza0R+IqX+3Oq3Qeb/dJaZa+/VMCaoOPM1CYbWG85cwX2IjQHwu
 /uwXSKChGR+VIGjEGWv4jSDXc1o0NQCkv6+Pde7Q=
Date: Tue, 2 Mar 2021 06:27:39 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <YD3Myz2psace5IqO@kroah.com>
References: <20210227095858.604463-1-gregkh@linuxfoundation.org>
 <df502c9f145e8ca26d7c79f291fc7abd48066b88.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df502c9f145e8ca26d7c79f291fc7abd48066b88.camel@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: use proper #include guard
 name in hw.h
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 02, 2021 at 01:37:59AM +0000, Nguyen, Anthony L wrote:
> On Sat, 2021-02-27 at 10:58 +0100, Greg Kroah-Hartman wrote:
> > The include guard for the e1000e and e1000 hw.h files are the same,
> > so
> > add the proper "E" term to the hw.h file for the e1000e driver.
> 
> There's a patch in process that addresses this issue [1].

Thanks, hopefully it gets fixed somehow :)

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
