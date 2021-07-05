Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BF03BB78D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 09:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BCF5830A8;
	Mon,  5 Jul 2021 07:12:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ioP_oGwIGIFJ; Mon,  5 Jul 2021 07:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F53D82FCE;
	Mon,  5 Jul 2021 07:12:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AB3E1BF334
 for <intel-wired-lan@osuosl.org>; Mon,  5 Jul 2021 07:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED6326067E
 for <intel-wired-lan@osuosl.org>; Mon,  5 Jul 2021 07:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B66JK7NMsDPb for <intel-wired-lan@osuosl.org>;
 Mon,  5 Jul 2021 07:12:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FC8C60674
 for <intel-wired-lan@osuosl.org>; Mon,  5 Jul 2021 07:12:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 12B88613E1;
 Mon,  5 Jul 2021 07:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1625469158;
 bh=Vna4oajZuvLzvcsjivNmu37UU2qWHxuhBDBfFUi7FJk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HY1mazg5/KU0gQ8mP6bWUmqiY2tSQFhIBzKCu/JuYInmWdaGRIBQRGwq5BPbVp4T6
 CCQWt6fLzLNteKDYeu39qH6gVKI7XFV1hVF7BplU0FSeACkVlIbyVD1l5OpsXGsLVN
 YmIqEnIwbn7IICvQpWsPuvSiqktPkhrc7jrsgLoA=
Date: Mon, 5 Jul 2021 09:12:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Message-ID: <YOKw5MzGaUNjxx/y@kroah.com>
References: <937dd880-f902-aa9c-67d5-2d582a29e122@univention.de>
 <BYAPR11MB360618A581F56D9054B2148AEF029@BYAPR11MB3606.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR11MB360618A581F56D9054B2148AEF029@BYAPR11MB3606.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] Cherry-pick "i40e: Be much more verbose about
 what we can and cannot offload"
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
Cc: "892105@bugs.debian.org" <892105@bugs.debian.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Philipp Hahn <hahn@univention.de>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Ben Hutchings <benh@debian.org>, "Bonaccorso, Salvatore" <carnil@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 29, 2021 at 06:20:30PM +0000, Fujinaka, Todd wrote:
> I think I accidentally deleted the forward from the intel-wired-lan spam filter. Re-forwarding and adding Alex's gmail address.
> 
> Also, 
> 
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
> 
> -----Original Message-----
> From: Philipp Hahn <hahn@univention.de> 
> Sent: Tuesday, June 22, 2021 11:19 AM
> To: stable@vger.kernel.org; 892105@bugs.debian.org; Ben Hutchings <benh@debian.org>
> Cc: Alexander Duyck <alexander.h.duyck@intel.com>; Andrew Bowers <andrewx.bowers@intel.com>; Bonaccorso, Salvatore <carnil@debian.org>
> Subject: Cherry-pick "i40e: Be much more verbose about what we can and cannot offload"
> 
> Hello,
> 
> I request the following patch from v4.10-rc1 to get cherry-picked into
> "stable/linux-4.9.y":
> 
> > commit f114dca2533ca770aebebffb5ed56e5e7d1fb3fb

Please provide a working backport, that you have tested works properly,
as it does not apply cleanly.

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
