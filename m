Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB5A4FD61
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 12:17:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0B9A81A58;
	Wed,  5 Mar 2025 11:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5fm6ql_hMtVT; Wed,  5 Mar 2025 11:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AC6281B60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741173418;
	bh=pyMHuHcxgBTNM/HkMUgiVZALqu/oASQTqw6/zUcFWlg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gDdDis6FqCbqwE41+FDFs0a86LyLvusaHPbXV+kfEW9dvdR+zy8xlQWMC8RR1NnJD
	 U15UCNgBmHHb7b1IPmfZz0SkLa03c11+pRAZx75i22lpD7g02Dp9/I27RldXA/Qdqb
	 FVUMmL3YEOj//FHFVrTuW6W8qTZloldHYDIGKaqGtxKIJm3DhABfmG0p3cghh7CIp3
	 NNrOHyFpDqpMgGvocaXottAtz3Esz4Du2Bde1Q8db47u50B+iJoZMnJBZugLY/0h4J
	 zsKLpzjGRKsCkK51RLai4m5SGzAxCvSWpDYdDSHSCAG/BwhtU3KksUXtloZ/u0AHiB
	 ZnSbEnq+4yNoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AC6281B60;
	Wed,  5 Mar 2025 11:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CA216194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADD86408F7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0lwPyBmbh6s5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 11:16:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 05E90408E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05E90408E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05E90408E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 63F785C6757;
 Wed,  5 Mar 2025 11:14:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B626C4CEE8;
 Wed,  5 Mar 2025 11:16:53 +0000 (UTC)
Date: Wed, 5 Mar 2025 11:16:51 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, andrew@lunn.ch, pmenzel@molgen.mpg.de,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250305111651.GL3666230@kernel.org>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-4-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303120630.226353-4-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741173414;
 bh=oRVq7ja1cQDhTMudEgPF0YfRGOOL+P0YUtT1U0ToH38=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dNCybJIAfa/bhKZvnNTeehCBG0An/V5YlRQxrXDeLNusk7SBw81eesfM24z+ZJIRT
 +DVWc9BTdLf1gd9TSVKv28MLLTcLSiIyS8o9La8CgdYlxRdFkZnnyUSiS+FAZMrMBz
 rzrprj9RC8KrKuC5cvSSJHd3eiLLl5Fh/nVQRbfgPBulVmp8gcg2Q0nOmMS2uF7dr8
 X8Tobbh9TKiBW6zi4Y3cKYjERj0Z7arTq4CJWhi3Fv7yNemIKrSlRUgK7vc17LADOH
 6xj/f74IlJHRE9iqxcvyj9QZnVvCjeymiXE3Am2Y+BmXcZUndQMHrr8nnaEDdxTm8M
 1bNVy0TdSy49A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dNCybJIA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ixgbe: apply
 different rules for setting FC on E610
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

On Mon, Mar 03, 2025 at 01:06:29PM +0100, Jedrzej Jagielski wrote:
> E610 device doesn't support disabling FC autonegotiation.
> 
> Create dedicated E610 .set_pauseparam() implementation and assign
> it to ixgbe_ethtool_ops_e610.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

