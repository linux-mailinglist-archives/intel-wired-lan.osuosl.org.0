Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 799F394BF86
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 16:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2605740B43;
	Thu,  8 Aug 2024 14:21:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8nWKdeNpVIx7; Thu,  8 Aug 2024 14:21:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6171640B4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723126872;
	bh=Ish2Xm/T9GQZrm5uVFlOc7OTcrJjwGy2mgH0/kQDpBQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NiBTEr5122HW4ErrE03ZcSf+devRENOxxD2V6OKM7/eQzwLwtXewzrS4ESLV2/kLt
	 kxRF2N9GyiA7cBjRjGONfi9AfszprkScSe9lJq4XStyo/VXtJVG7EljhkcG7i+Jel9
	 C/C+lP3aLqsMsVEBTM8kny9VGPicvMBUTh8B+Vr5SnzJo8sEpLi/KnoDt7mWlIjsE/
	 2hbaoBaBKV9ei8CMA7r8hyzYwZG7wz857wZEbPnNQ54ZslVjW0JrZBlx9MXYrcEr71
	 drNbKbF3v0iCpw6UWg4mc7kSQIibyKyjSV6eDLlmYBfsHNi65kDS5YqT6fcVsNg4C4
	 /xEiQPHSpz2Ww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6171640B4B;
	Thu,  8 Aug 2024 14:21:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF751BF294
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3806E40B43
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G3NCXJ2srlIc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 14:21:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C372C40979
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C372C40979
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C372C40979
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:21:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id F179CCE17C2;
 Thu,  8 Aug 2024 14:21:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82F8BC32782;
 Thu,  8 Aug 2024 14:20:59 +0000 (UTC)
Date: Thu, 8 Aug 2024 07:20:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240808072058.09215916@kernel.org>
In-Reply-To: <52af8b88-8814-4861-aba0-4bc726c95740@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
 <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
 <IA0PR11MB838091A67C0AE3598BFCDF8D86BE2@IA0PR11MB8380.namprd11.prod.outlook.com>
 <e54793ef-f81c-447a-8cdd-bed97df65f2e@intel.com>
 <IA0PR11MB8380B6EC30AC39EAAC1F480986B82@IA0PR11MB8380.namprd11.prod.outlook.com>
 <52af8b88-8814-4861-aba0-4bc726c95740@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723126859;
 bh=FcGF36TBWHJtKexABNo42UKivkTYDrcajYqTkssd2os=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tkH4tGtrgw5RaGeQkptrD91VOVZLp4ENUR1EtR7hoBkk9k6LFn9qI14ytWqc02Plf
 U1coNePPwvsfjtofN6lzev9kYTnefR5Va1UA2hlP0Absg0Qqdt4LRbgHtJoQRW3IDX
 BHhAdke8tuV1CGidbV/NEbOFcK94fmufe5VTJNUbibwa3McqMy07eUgDsR88flikst
 atso+vBkBUtirBiDyyEnmpKCe5p1xFNVG8z3ILP7JVo/NYnxjLAcuUPnib4/CraOjS
 v8oUb8kUbafIiVPjdNWKWmTswcFM/I5TsvoYtPzQrmEpD8qjZOGqzoQ9q6IZHyz1IG
 p4mSd/QyVDEPQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tkH4tGtr
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 8 Aug 2024 15:00:52 +0200 Alexander Lobakin wrote:
> > Technically, neither ART nor TSC are directly related to the PTP cross
> > timestamp. It's just the implementation on Intel NICs, where those
> > NICs use x86 ART to crosstimestamp.
> > 
> > For cross timestamp on ARM, it's also HW specific and depends on which
> > timer the HW uses for timestamping. I'm not really sure what's the HW
> > protocol in this case and if e.g. E830 can latch other timers than
> > x86 ART in its ART_TIME registers.
> > 
> > get_device_system_crosststamp() supports multiple clock sources defined
> > in enum clocksource_ids. Maybe instead of checking ART flag, the driver
> > could get clocksources and if CSID_X86_ART is available, it would assign
> > the pointer to crosststamp function, but I'm not convinced.  
> 
> I mean, I'm fine with the arch-specific definitions in the driver as
> long as the netdev maintainers are fine. Or maybe they could propose
> some generic solution.

I don't like it either, FWIW, but it seems like this is what everyone
is doing. Please do CC tglx / the time maintainers on the next version
and net-next submission. I get the feeling they will wake up in a year
telling us we did it all wrong, but hey, all we can do now is CC them..
