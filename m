Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D47BDD79F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 10:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1680D6152A;
	Wed, 15 Oct 2025 08:44:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DInMy2i7_mxK; Wed, 15 Oct 2025 08:44:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A8A0614D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760517885;
	bh=K0ZfJjPLqAKWXA78dB/9UOG4Z4rYHCunVjVmPyKiXK0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HkObATo5DBjKkZDCztQ3IKAen+Swlg/NyXh8GtB4o0IWvJyK4MAuEcLJaKRFWQYNk
	 BHSE6O8U+SZEpd1a/02KvHGZACjpFx+PqaK5J8kUY576JBYDyCbz30iTdTFSRP0jYE
	 5OH9NkpVD6GKoqWFxdtbLE+hDo4444S713zcYWEQPpH2PzPmtLA8ljdgsg7oOrpVMF
	 VDo2eUVUkkIqo0JJlUPt5BPCi1htRc7vF/Dz7zJBtcQtfHl05c1otU8Tk+KxH2+1Yl
	 iiHLIIfd4CVD4gCvkEQr8BV8rscPw9IBztOEYzoV9ztzlpymgvNXh3gOfzv504C9u7
	 sVriwmlbBPKeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A8A0614D5;
	Wed, 15 Oct 2025 08:44:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AEEA01C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 08:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95A3C4051B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 08:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yJqTpM1MDYZn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 08:44:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0401B403B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0401B403B9
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0401B403B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 08:44:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 222D5401C6;
 Wed, 15 Oct 2025 08:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 071C2C4CEF8;
 Wed, 15 Oct 2025 08:44:40 +0000 (UTC)
Date: Wed, 15 Oct 2025 09:44:38 +0100
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aO9e9ix2jHA30pY0@horms.kernel.org>
References: <20251014084618.2746755-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014084618.2746755-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1760517882;
 bh=9gCgcNDZMLI33rXS3SXu4duzcgmjeLbz/3YFKtX+M/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hk/WMTDMmauQaQohmserq9/6qPb3Le7RvdVMWS7XTtYxTK2mGntDP+p8Oxkbilx+U
 XpVOQJqQRLaU3JPAIkH5Lm17pUdjxHcbwX/qJs772fzjIQPcUQiiymN3LuqtPZ9qyg
 VCVJAC3RdbK82ZHi0CMf1jvERY54iVmIXrCPT8qJu7J6PxuO2T4vUNXkk8baCR2Ixz
 0Zb34u3DeFsr+aBx/k++AD3UFVGEEMJX0RPNjaiP9DgvOfeQcxgWGf8wwlxKqSIWKp
 LkkjxdbqYZ2LYFV+aLtrd1zHIi7oIAPo+CizXtwy1dYRGR0JtXEo3744ooqJd1I3vr
 9rbUY8neS46fA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Hk/WMTDM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
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

On Tue, Oct 14, 2025 at 10:46:18AM +0200, Grzegorz Nitka wrote:
> Unify handling of PHY firmware load delays across all E800 family
> devices. There is an existing mechanism to poll GL_MNG_FWSM_FW_LOADING_M
> bit of GL_MNG_FWSM register in order to verify whether PHY FW loading
> completed or not. Previously, this logic was limited to E827 variants
> only.
> 
> Also, inform a user of possible delay in initialization process, by
> dumping informational message in dmesg log.
> 
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

