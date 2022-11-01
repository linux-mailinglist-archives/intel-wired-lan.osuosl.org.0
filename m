Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 370DA614214
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 01:05:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F25B8141A;
	Tue,  1 Nov 2022 00:05:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F25B8141A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667261149;
	bh=antoQ3AHYe8ieAi/Zf60eLS5bZslh+q9CLTspqSmyWc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wu1gO1r8lOki6B/agF7uzW1sa9DnCfhhP6QfK4beLZ2k7ADKdkAuHKbtykMGlQ5oI
	 8qpdNsgkGfwE2TMTbTArjNV2PRICKh5bVUvffocxZdPcicl9Y697QeoVRi/ky3ipuS
	 kjr2NZ6FchyqK0GT6LtsX+2Sap6B4IHtKhYYyQnY7xrcB3NjVn2/xhdu9LfXyVVbUb
	 2nYaB05bFrfFGy7r4BtsKymi5dB1fJRaChY3ymsYKUQIPmzkzbamjoOUh+MCG6gi1Y
	 ryBMRiZt7DL4QRMTiiOvLOSffgrH8XXShJMbHvexZa9IavkdbpW92L6xGQ/XwpJ4Qu
	 LSXJf6mH50myw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YG-YRuAtF-5v; Tue,  1 Nov 2022 00:05:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4413981401;
	Tue,  1 Nov 2022 00:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4413981401
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 074CD1BF95C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 00:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2E54408DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 00:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2E54408DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eaMdS3PcMqwJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 00:05:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47DA2408D3
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47DA2408D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 00:05:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EC675B80D8D;
 Tue,  1 Nov 2022 00:05:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74476C433C1;
 Tue,  1 Nov 2022 00:05:36 +0000 (UTC)
Date: Mon, 31 Oct 2022 17:05:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ivan Smirnov <isgsmirnov@gmail.com>
Message-ID: <20221031170535.77be0eb5@kernel.org>
In-Reply-To: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667261136;
 bh=XuEDqTgMd2H1YNp9QrfZlH98Jg0AJXkHJEsxBlQAcZw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j5ziAoaKEZWMSZoN1ATEicSVx5hjOnrD6xyDIwviwlF/PpGn4KI3KYiAh9WSZ7nuY
 zkLfCKebQDil9kJ5Tn4hOItzYwsROaijR+4jGFqJh/RBM68VF0KNoK2A/xT2V58BEq
 y0cejal+g1fylD28298RV9uGgdhp4v6O3glP7AHBOFSlnAcPxjKUz9Ie3cpTU0Pd3h
 ZAO6/70WpgvNXkkAEt1jhiLYrprfUgyzuRj0fNOSSIoJIRu1S8sh3TVOi80nIkPugd
 jHLJ6xfBOeWGSlZG+y51R/GbaZFziuWWOQadWiDaNqRGYq6dNkn+O2Nt8QvWgwqbjb
 gjPYpzqorUokg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=j5ziAoaK
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CC: intel-wired

On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
> Hi folks,
> 
> I found your commits on the linux kernel igc
> <https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc>
> folder. There appears to be a bug with the igc kernel module on Intel
> I225-V chips.
> 
> Specifically, the probe fails at startup with error: "igc: probe of
> 0000:06:00.0 failed with error -13". When it does load, it crashes after a
> few hours with error "igc failed to read reg 0xc030".
> 
> There are several affected users posting on
> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
> with more details.
> 
> Could I help you debug this? This problem has been reproduced on the
> following setups:
> 
> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
> <https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/>
> on
> Arch Linux, kernel 6.0.2-arch1-1
> 2. rog strix x670e-e gaming wifi
> <https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/>
> on
> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)
> 
> I'm happy to load any debug modules or provide additional logs as per
> your request.
> 
> Thank you
> 
> 
> 
> 
> --
> Ivan Smirnov
> https://ivans.io/ | https://blog.ivansmirnov.name/
> https://www.linkedin.com/in/ismirnov |
> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
> *https://github.com/issmirnov <https://ivansmirnov.name/>*

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
