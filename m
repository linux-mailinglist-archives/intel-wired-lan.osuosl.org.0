Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCA68B46B7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 16:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03B5E6083D;
	Sat, 27 Apr 2024 14:56:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NVFCfiT3Pnuy; Sat, 27 Apr 2024 14:56:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 638F6606E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714229778;
	bh=SkslaTG87ND4fcctgm03AYX3sLOWGk4Ve6xMdvDhBWw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v/oRMCi1C46nZODT0z8UxfnZxaN29qggOCY7Xhq2p+RSFAh8lsDk25J0dX+EISWwT
	 f69rtiDhZYxNRvG1//1jhVTW5a/oznlpUGY+rxoyxdH9pAadLtrOJSNg29lZRpdgP8
	 DyPLZf0VRzUL3Zg6Lv2051ojJ11XVJaA5+oTS6I9wOIKMG+j8BMwPexsQvZAGdSaHZ
	 AKzue1vIgml/CUTmPwqqcg+Yf1pjHVaDH8RZYXpneBLYVtSqa73s8RqMnqEMovEAVL
	 yCv1DjS8ZOPSUhbsuS1XRpp/QJdj1ME2PWD+by38wyvWDabm9MpxvtSQBwDA9pPJEK
	 INaNPiBgyoR/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 638F6606E9;
	Sat, 27 Apr 2024 14:56:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FC231BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 210806076C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hL3ma0qjGrCR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 14:56:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 90AE5606E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90AE5606E9
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90AE5606E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 9D055CE098F;
 Sat, 27 Apr 2024 14:56:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3D69C2BD10;
 Sat, 27 Apr 2024 14:56:06 +0000 (UTC)
Date: Sat, 27 Apr 2024 15:56:04 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240427145604.GN516117@kernel.org>
References: <20240427072615.226151-1-ivecera@redhat.com>
 <20240427072615.226151-2-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427072615.226151-2-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714229769;
 bh=2keqNmf75GCNlX26W+pv3/N2abISiBK9T2meqhf2yKg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IoeVlFHNBZ1r3y6yxNU4E/Hi+JX5xDfuX2bMA2Z2yHHFQVq6+XPTkAgZHkGdvftDY
 bEBW9Ly4Vqjd7B+SYCATvDD0knr1Pk66jqHaJKim51SZxaS3XcT6LDC3odoMKB/SX+
 zaZagQvoxCbPRraKYaZHQ/l+hWACXSdXjWF1lup19D+/JjQFIp7+YHZYCC5IsxpmOF
 /sLhWPSGikiCaJnRcVtxDsX7pQHtDvLXMqR5Yk101eXX9Q+jzn0mn/VcqyVJeRVTMs
 WPYSC1XkmjXEwhCdsd/OFnrLTrB5ONySIWeYsxRuEUE7BDzMBP2mX2+FrFx7M/2sDz
 b30hkhzYDOX+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IoeVlFHN
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/7] i40e: Remove flags
 field from i40e_veb
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, Kalesh AP <kalesh-anakkur.purayil@broadcom.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 27, 2024 at 09:26:02AM +0200, Ivan Vecera wrote:
> The field is initialized always to zero and it is never read.
> Remove it.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Kalesh AP <kalesh-anakkur.purayil@broadcom.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

