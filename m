Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB824E4627
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 19:40:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C92A61263;
	Tue, 22 Mar 2022 18:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A7ZSOOAtI9QA; Tue, 22 Mar 2022 18:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F0626006A;
	Tue, 22 Mar 2022 18:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63CE51BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 18:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C92F60BCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 18:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5banVhgdkkY2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Mar 2022 18:27:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A20BA61288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 18:27:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 50017CE1E73;
 Tue, 22 Mar 2022 18:27:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F171C340EC;
 Tue, 22 Mar 2022 18:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647973651;
 bh=uOSvkHpZ1Gp5Do/Gf5jpgr3xJAKnHMDWMqaC9BanDE0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tFHOHIUA81vi642CvYKLC3JpQKJGfF5h9CyHBiupNSEKY4FQMfOkfHioEtgM3a3G/
 oXcEwHUc0ON2plePihafb4XX3uvuabPt2Khu4fwtsuiJZP5nkbivMwpOERe9cfwvzV
 cjMnZrTz1sL4L1NuieJIVSNY/x3BNtwHFf9FYZac+aDbBuWQgINI9Z7IlCo4hEwZeP
 d0iie3NqlzCN/5xU0bEQahdplhpygP/h5/+y2H3fOrMcOFNwz/11jGsB/sqHDbZfTp
 o3eMNFr1hdEFKOC6zBjjNnwmR//blNXw2Y4OA5QefoP3M63NXyGQPONAcZ5VlHsYih
 eYeYr8tlHRQtA==
Date: Tue, 22 Mar 2022 11:27:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>
Message-ID: <20220322112730.482d674d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <af3fa59809654c9b9939f1e0bd8ca76b@AcuMS.aculab.com>
References: <20220321135947.378250-1-wanjiabing@vivo.com>
 <f888e3cf09944f9aa63532c9f59e69fb@AcuMS.aculab.com>
 <20220322175038.2691665-1-alexandr.lobakin@intel.com>
 <af3fa59809654c9b9939f1e0bd8ca76b@AcuMS.aculab.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: use min_t() to make code
 cleaner in ice_gnss
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
Cc: 'Wan Jiabing' <wanjiabing@vivo.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 22 Mar 2022 18:12:08 +0000 David Laight wrote:
> > > Oh FFS why is that u16?
> > > Don't do arithmetic on anything smaller than 'int'  
> > 
> > Any reasoning? I don't say it's good or bad, just want to hear your
> > arguments (disasms, perf and object code measurements) etc.  
> 
> Look at the object code on anything except x86.
> The compiler has to add instruction to mask the value
> (which is in a full sized register) down to 16 bits
> after every arithmetic operation.

Isn't it also slower on some modern x86 CPUs?
I could have sworn someone mentioned that in the past.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
