Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EF6939172
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFFAF605CD;
	Mon, 22 Jul 2024 15:10:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H7ytNE48nvUa; Mon, 22 Jul 2024 15:10:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02D77605AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721661037;
	bh=asjqe3+UnHy6pRUZD1T41HxBv6mLYhlKgHvH7W+blww=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=56UppVTzB9ON1EoMc7+nfO/N3aqE9ClGJASCzI5itB8izybM94sy/ZJzXqqqpue+C
	 q4kvaFVl66VXZnV89sjFIc0IR96v2aJfoMHtMk7jzqE+nF/VPwtWXnToFJGdiyYKSy
	 YfRZFdKGn9i6LZrfk3y6bU0UoNdoIPd4ZMwwY4L0PvxeJJr98uQmeH0PY9UHWQqDro
	 ZeWy3ylxgnoMk2/0o0K8Pamlorj4gm1cHFEEe2sidULYMnYOJlDcQ/ket0cBSvT4bl
	 cDN4LUCY3/PdFrl/VDtx0uaaoOr3kmlMBVHqknfFrt+nylTKgoG4weWRlZP0Abgglg
	 vH7N9nN5igweg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02D77605AC;
	Mon, 22 Jul 2024 15:10:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71A9B1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BEB5404F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fBZkG2o8u6mP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 68EE3404C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68EE3404C2
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68EE3404C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:10:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CC827CE0ACA;
 Mon, 22 Jul 2024 15:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEDDAC116B1;
 Mon, 22 Jul 2024 15:10:28 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:10:26 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722151026.GQ715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-10-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-10-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721661030;
 bh=96SKCm9hLa8Y4hSd6fuv/NVvVYKc1Vvns31N7ZLml68=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IraDZLWaNwLijDWTMQ/Wy/zuLMeLRslSAditGmIZMpYriC2csOQdctZ2AYS4cSWEw
 jIs/zrHR6RTgxFSImf8t9BiDiQKNq7zJUoNSB20k9wmIA1A/hSKLJnzdDbS8HLPqFO
 kVB86Abtee7wJsO68zn3rgdTmFFbQc24eoXLqz2p5ImzzxFDhlWUV6/PIjLeoduhLT
 amFvDYOCCfPlX9Uwhgz04kWAlqhr/Zz6HlvpaM52u9KxmpCTnUGFRpOi9x/mOCCqod
 fxGJh3fx1j1K+3LfDfX92il/8wKDoQMGxtyBcbu7NJ1AylQkiAFCTJe3/2ygo11ZFf
 I5BMTAYvnR5UA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IraDZLWa
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 09/13] virtchnl: support
 raw packet in protocol header
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:11PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> The patch extends existing virtchnl_proto_hdrs structure to allow VF
> to pass a pair of buffers as packet data and mask that describe
> a match pattern of a filter rule. Then the kernel PF driver is requested
> to parse the pair of buffer and figure out low level hardware metadata
> (ptype, profile, field vector.. ) to program the expected FDIR or RSS
> rules.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

