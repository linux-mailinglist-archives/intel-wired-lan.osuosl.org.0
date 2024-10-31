Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCF29B7FB0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 17:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A04860AD9;
	Thu, 31 Oct 2024 16:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ATBLp6lIxUpF; Thu, 31 Oct 2024 16:11:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 858A960633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730391101;
	bh=Pb2MpjWA8AeC6RHOsofIRAdpVT9ibYfeswmALsyeHVQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yw633EbUAnvlQ3jvZhggf4cQPaVNRkVSnUG9Gha4CQBhRXLF1J8+NRljlRIIYa/KN
	 +w8sS79tF+6qWeSwFer4hDX2zktcyeYM6ZGdjR3g1nF6V0Jdjj9d5qQw71SlBSEfnS
	 jeBgEhe18HEewKmI+vLN5V9cfZETxl4DYz8N5qhl7tlcyzOEkhEuwEmbhztJpTvAZc
	 hpg+UFUhhtAbTQsBW2tF73N8Te6bWPnvPofXtgexJs5VHQ+Ofe+BBOoFxwzgW83A5y
	 SwtZHF1oUc6Q7Nchg55C795bFLoEum75IedwzVhlYm/GBSHBFWuIsKxBN2c9fvYm8E
	 bh8s+rdWN6fnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 858A960633;
	Thu, 31 Oct 2024 16:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D5665E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 16:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E1714028E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 16:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fbg5vfsYGN2s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 16:11:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.11.55.87;
 helo=james.theweblords.de; envelope-from=pegro@friiks.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2A8640042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2A8640042
Received: from james.theweblords.de (james.theweblords.de [217.11.55.87])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2A8640042
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 16:11:37 +0000 (UTC)
Received: (qmail 17817 invoked from network); 31 Oct 2024 16:11:34 -0000
Received: from localhost (HELO james.theweblords.de)
 (petronios@theweblords.de@127.0.0.1)
 by localhost with SMTP; 31 Oct 2024 16:11:34 -0000
Received: from localhost ([89.12.32.63]) by james.theweblords.de with ESMTPSA
 id u1auITasI2eWRQAA4k8YEw
 (envelope-from <pegro@friiks.de>); Thu, 31 Oct 2024 17:11:34 +0100
Date: Thu, 31 Oct 2024 17:11:33 +0100
From: Peter =?ISO-8859-1?Q?Gro=DFe?= <pegro@friiks.de>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>
Message-ID: <20241031171133.00001507@friiks.de>
In-Reply-To: <2d6b0d54-57d3-4f3b-833c-8490aa63490d@intel.com>
References: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
 <20241030172224.30548-1-pegro@friiks.de>
 <03b7d4ef-1e1e-4b9e-84b6-1ff4a5b92b29@molgen.mpg.de>
 <2d6b0d54-57d3-4f3b-833c-8490aa63490d@intel.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=friiks.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix handling changed
 priv flags
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Am Thu, 31 Oct 2024 08:34:36 +0100
schrieb Przemek Kitszel <przemyslaw.kitszel@intel.com>:

> >> Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and=20
> >> hw_features fields in i40e_pf")
> >> Signed-off-by: Peter Gro=DFe <pegro@friiks.de> =20
>=20
> Both the code change and the Fixes: tag are correct, thank you!
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Great to hear :)

Would this be material for stable?

I hope to avoid building my own kernel and just use a hwe kernel of Ubuntu.


> BTW, we obey netdev rules on IWL ML - next revision only after 24-48h
> and send as standalone series (instead of In-reply-to) - no need to
> repost this time of course

Sorry, I'm new to submitting patches here.

Is there anything else I need to do?

Kind regards
Peter

