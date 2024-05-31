Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E545B8D68D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 965AD4242A;
	Fri, 31 May 2024 18:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYq3AteDaZJR; Fri, 31 May 2024 18:17:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEAB9423B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179440;
	bh=+5P6leHL4hzVleAQr3z0NnUilCoR5BeoyyQSC5SY8KM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3LxtxBoq79ZPXrSZsMHkcvb3Ya53gfUm8ovp1HFgNVR9Fhw1TMClCxnAMDBMX4Wwp
	 Rroll5ZR2mODyglOLR+HJLNI6OUSkQLvZ77ORwrAg1JKL+MXe31XcTuzbmJUUdrOQO
	 V38Fjp/1gUrfkMFFkqA1tyE3vdTxDVHAz5fnlnEBoZAJiDISsHz3HD3DkLTohV80Fv
	 MkeqYdX2YdrS//VvSOS8OM9OPdwl2px80MfRQpGKrYDwsNZCAHlxqcVEKr/ARakfe1
	 5ILnPx8AYBEXfbBff54soiRxVxGwR9FFKISLO7UD6yPQ1mTCOWueReN9dVwcJ/thCN
	 G1AkSg6fMK/fQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEAB9423B2;
	Fri, 31 May 2024 18:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F3221BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 065CA84632
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZzaLEnfg1ONL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 40C2C84631
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40C2C84631
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40C2C84631
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C4EEDCE1C4A;
 Fri, 31 May 2024 18:17:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA948C116B1;
 Fri, 31 May 2024 18:17:11 +0000 (UTC)
Date: Fri, 31 May 2024 19:17:09 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181709.GL491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-10-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-10-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179435;
 bh=zPBrhbLB0Q56LyxnRq5onVyfj0pzfuh5LNc4BRXZmWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ivmJASeYYm1gNnFdhHxkL9bJ540N5+chCYHV0RWtkcSXRVYT6KCUGqHPTO4+6HSCG
 wzErI4nUH2feDqBu/wYBAdQM8bFHyhe26CzVlKkwogXnsEA/LK9D0R2rlUTT7WxWIV
 bzz6tS44pQwgJR+MzBPJeamCIMFzuGWG1+CLdW3gsEKsbXEPF0jj/27ElpTU5eS4pl
 I5n9GSHpF/pP1ELnJNPDdKnz7oSlsT9ZMFexqcLhbm/RX04zjciL6h3eMV+hsns12y
 ndrTDO3QbFfhsQRqFjbeL4ThItefj35Spv2nfot5w/nOWJyWMivpYvG3u/r9jX0j08
 Ipr2zFHjQxfOg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ivmJASeY
Subject: Re: [Intel-wired-lan] [iwl-next v3 09/15] ice: create port
 representor for SF
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:38:07AM +0200, Michal Swiatkowski wrote:
> Implement attaching and detaching SF port representor. It is done in the
> same way as the VF port representor.
> 
> SF port representor is always added or removed with devlink
> lock taken.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

