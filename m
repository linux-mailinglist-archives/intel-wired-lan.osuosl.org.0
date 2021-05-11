Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBCA37AC98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 19:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 922C283C69;
	Tue, 11 May 2021 17:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TFVbXjKkZFcQ; Tue, 11 May 2021 17:01:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88F7083C46;
	Tue, 11 May 2021 17:01:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C72D11BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 17:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B568883C46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 17:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xr5NDSz8nR33 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 17:01:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ms.lwn.net (ms.lwn.net [IPv6:2600:3c01:e000:3a1::42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDB7883C3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 17:01:28 +0000 (UTC)
Received: from localhost (unknown
 [IPv6:2601:281:8300:104d:444a:d152:279d:1dbb])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 6C8034BF;
 Tue, 11 May 2021 17:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 6C8034BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1620752487; bh=QmVYJvT1Kzq68R+QLKACGPLdolv6eNZVx9knetb0KFs=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=irQf+xtmaDJZYLKwq3hA8ztA2UhPkWaMvlGfMCect35HeamgThOzqqCroC26BP/Sl
 CZ5fyVVCGLDX5hEb0cnVXCWNegwA+Xs245fqJaayhz/QOZsSyLbOEm6eAcMMVYm6OY
 KYssjOyi8tvqVhDlU9yQOg3yj6ggq5zhGjo6YGvleqEvR4QvYakpL6DYodSr6ne5p2
 POLXDUg/aNRvtMVVTSEj+i7YB0HcWdlIM/5xZz2XEUDjPiyFKgjrJG+D5PIfW0A/ku
 jf3zV8C5QT23k16fFmU0Sd0ej651gdEPXtb2eRRgDOFPAPrnQiy6aPBFrlggpfHlaH
 YTUqF86upi5qg==
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Linux Doc Mailing
 List <linux-doc@vger.kernel.org>
In-Reply-To: <cover.1620744606.git.mchehab+huawei@kernel.org>
References: <cover.1620744606.git.mchehab+huawei@kernel.org>
Date: Tue, 11 May 2021 11:01:26 -0600
Message-ID: <87fsytdx21.fsf@meer.lwn.net>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 0/5] Fix some UTF-8 bad usages
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mauro Carvalho Chehab <mchehab+huawei@kernel.org> writes:

> This series follow up this past series:
> 	https://lore.kernel.org/lkml/cover.1620641727.git.mchehab+huawei@kernel.org/
>
> Containing just the manual fixes from it. I'll respin the remaining
> patches on a separate series.
>
> Please note that patches 1 to 3 are identical to the ones posted
> on the original series.
>
> Patch 1 is special: it fixes some left-overs from a convertion
> from cdrom-standard.tex: there, some characters that are
> valid in C were converted to some visually similar UTF-8 by LaTeX.
>
> Patch 2 remove U+00ac (''): NOT SIGN characters at the end of
> the first line of two files. No idea why those ended being there :-p
>
> Patch 3 replaces:
> 	KernelVersion:3.3
> by:
> 	KernelVersion:	3.3
>
> which is the expected format for the KernelVersion field;
>
> Patches 4 and 5 fix some bad usages of EM DASH/EN DASH on
> places that it should be, instead, a normal hyphen. I suspect
> that they ended being there due to the usage of some conversion
> toolset.
>
> Mauro Carvalho Chehab (5):
>   docs: cdrom-standard.rst: get rid of uneeded UTF-8 chars
>   docs: ABI: remove a meaningless UTF-8 character
>   docs: ABI: remove some spurious characters
>   docs: hwmon: tmp103.rst: fix bad usage of UTF-8 chars
>   docs: networking: device_drivers: fix bad usage of UTF-8 chars
>
>  .../obsolete/sysfs-kernel-fadump_registered   |  2 +-
>  .../obsolete/sysfs-kernel-fadump_release_mem  |  2 +-
>  Documentation/ABI/testing/sysfs-module        |  4 +--
>  Documentation/cdrom/cdrom-standard.rst        | 30 +++++++++----------
>  Documentation/hwmon/tmp103.rst                |  4 +--
>  .../device_drivers/ethernet/intel/i40e.rst    |  4 +--
>  .../device_drivers/ethernet/intel/iavf.rst    |  2 +-
>  7 files changed, 24 insertions(+), 24 deletions(-)

These seem pretty straightforward; I've applied the set, thanks.

jon
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
