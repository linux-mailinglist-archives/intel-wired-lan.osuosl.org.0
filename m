Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF8BC164B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 18:50:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B55DC40522;
	Tue, 28 Oct 2025 17:50:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9ce_DaMSH6A; Tue, 28 Oct 2025 17:50:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 071F540523
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761673811;
	bh=77R0pZbR4YsPUdqF40yC9G7JbOYfQ2ABjLHuCoX/FAE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n7iQB9lqJlWLVfPTIQPtDBBWeuB99rQo6+e3w69JZCrDkfuh2oga1xd8LtQB0QwO4
	 F7kefDwSUN3sKf0ky/Y7SNUgEnzSl01T26JPvnPr68+6GzKSqlmqxRZZYwElo0VUKJ
	 xPd+AodeNi4CzRGf6sk65OOacc0I5CL1Mqhu59R8RnF6eJ/nnvNg0vlT7XDt9gM3By
	 uyBQ8XoWe/YeZgIyNjth3eiXSB6lXmxJgAxhg1z4ia5BPsmuv4u0uaErcnwufHAxk5
	 02ZLNtgKvcnHcVzTbaTYMYV2h+NpGHmeCLXai6OGc8nihS5iLnKF2K4VqncTITWLhS
	 SaAKRfQ9dJbzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 071F540523;
	Tue, 28 Oct 2025 17:50:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 77A5A22F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 17:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67C1080E08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 17:50:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bNMizmqH1pjJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 17:50:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A31D880E09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A31D880E09
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A31D880E09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 17:50:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1796D43486;
 Tue, 28 Oct 2025 17:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA299C116B1;
 Tue, 28 Oct 2025 17:50:07 +0000 (UTC)
Date: Tue, 28 Oct 2025 13:50:06 -0400
From: Sasha Levin <sashal@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: patches@lists.linux.dev, stable@vger.kernel.org,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Ramu R <ramu.r@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Message-ID: <aQECTnYEi8q7wycn@laps>
References: <20251025160905.3857885-1-sashal@kernel.org>
 <20251025160905.3857885-238-sashal@kernel.org>
 <e81c5f0c-eaf5-457e-8257-eaf0e7116164@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e81c5f0c-eaf5-457e-8257-eaf0e7116164@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761673807;
 bh=0q+GiUYteQ/lQcoyJq1MnhmPR0PcR/6dgD1yyVtppHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oLltaceA7lEcpAxzatPfQ96dAELBrsU5GeltW3VUGVClDFzmi2dOJJp5mNCBEzKOo
 0s783wSUuq7FE19ndIRuIR+G1GMsGdkGi77BYLvtEfrZon5xbwP5jMWGWCxWBE9qnT
 27gQmEtdYvLZ7JcvgedbReXxGrR7ptlMuapUVECV8+P8V+dJe0aE+rU6rhwmPf2Wsd
 /R9yPZ/hWtSr13a/xiMxA3g3DHYu+pGIUmSW4EJwKQ2pb/Gr7X34/MPE38r4y1Ltqg
 0Pr97i9tthwKGf/2Xp02CjHX9G3IzeJ6qEKEHFCCNWEWXMjhdxcuJJM+3gDqYfRYHM
 0l5/+TMCZhQ1A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oLltaceA
Subject: Re: [Intel-wired-lan] [PATCH AUTOSEL 6.17] idpf: link NAPIs to
 queues
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

On Mon, Oct 27, 2025 at 04:19:24PM +0100, Alexander Lobakin wrote:
>From: Sasha Levin <sashal@kernel.org>
>Date: Sat, 25 Oct 2025 11:57:49 -0400
>
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>
>> [ Upstream commit bd74a86bc75d35adefbebcec7c3a743d02c06230 ]
>>
>> Add the missing linking of NAPIs to netdev queues when enabling
>> interrupt vectors in order to support NAPI configuration and
>> interfaces requiring get_rx_queue()->napi to be set (like XSk
>> busy polling).
>>
>> As currently, idpf_vport_{start,stop}() is called from several flows
>> with inconsistent RTNL locking, we need to synchronize them to avoid
>> runtime assertions. Notably:
>>
>> * idpf_{open,stop}() -- regular NDOs, RTNL is always taken;
>> * idpf_initiate_soft_reset() -- usually called under RTNL;
>> * idpf_init_task -- called from the init work, needs RTNL;
>> * idpf_vport_dealloc -- called without RTNL taken, needs it.
>>
>> Expand common idpf_vport_{start,stop}() to take an additional bool
>> telling whether we need to manually take the RTNL lock.
>>
>> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # helper
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Tested-by: Ramu R <ramu.r@intel.com>
>> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> ---
>>
>> LLM Generated explanations, may be completely bogus:
>>
>> YES
>>
>> Why this is a bug-fix
>> - The driver was missing the association between netdev queues and their
>>   NAPI instances. This breaks NAPI-aware configuration and features that
>>   require queue->napi to be set, e.g., AF_XDP busy polling. The patch
>>   adds the missing linkage and corresponding unlinkage, which is clearly
>>   a functional fix rather than a feature.
>>
>> What changed
>> - Link/unlink netdev queues to the NAPI of each q_vector:
>>   - Adds `idpf_q_vector_set_napi()` and uses it to associate both RX and
>>     TX queues with the q_vector’s `napi`:
>>     - Link on IRQ request:
>>       drivers/net/ethernet/intel/idpf/idpf_txrx.c:4043
>>     - Unlink on IRQ free:
>>       drivers/net/ethernet/intel/idpf/idpf_txrx.c:3852
>>   - Helper implementation:
>>     drivers/net/ethernet/intel/idpf/idpf_txrx.c:3818
>>
>> - Ensure correct locking for netif_queue_set_napi:
>>   - `netif_queue_set_napi()` asserts RTNL or invisibility
>>     (net/core/dev.c:7167), so the patch adds an `rtnl` parameter to the
>>     vport bring-up/tear-down paths and acquires RTNL where it previously
>>     wasn’t guaranteed:
>>     - `idpf_vport_open(struct idpf_vport *vport, bool rtnl)` acquires
>>       RTNL when `rtnl=true`
>>       (drivers/net/ethernet/intel/idpf/idpf_lib.c:1397–1400), and
>>       releases on both success and error paths (1528–1531).
>>     - `idpf_vport_stop(struct idpf_vport *vport, bool rtnl)` does the
>>       same for teardown (900–927).
>>   - Callers updated according to their RTNL context, avoiding double-
>>     lock or missing-lock situations:
>>     - NDO stop: passes `false` (called under RTNL):
>>       drivers/net/ethernet/intel/idpf/idpf_lib.c:951
>>     - NDO open: passes `false` (called under RTNL):
>>       drivers/net/ethernet/intel/idpf/idpf_lib.c:2275
>>     - init work (not under RTNL): `idpf_init_task()` passes `true`:
>>       drivers/net/ethernet/intel/idpf/idpf_lib.c:1607
>>     - vport dealloc (not under RTNL): passes `true`:
>>       drivers/net/ethernet/intel/idpf/idpf_lib.c:1044
>>     - soft reset (usually under RTNL via ndo contexts): passes `false`:
>>       drivers/net/ethernet/intel/idpf/idpf_lib.c:1997 and reopen at
>>       2027, 2037
>>
>> - Order of operations remains sane:
>>   - Add NAPI and map vectors, then request IRQs, then link queues to
>>     NAPI, then enable NAPI/IRQs
>>     (drivers/net/ethernet/intel/idpf/idpf_txrx.c:4598–4607, 4043,
>>     4619–4621).
>>   - On teardown disable interrupts/NAPI, delete NAPI, unlink queues,
>>     free IRQs (drivers/net/ethernet/intel/idpf/idpf_txrx.c:4119–4125,
>>     3852).
>>
>> Impact and risk
>> - User-visible bug fixed: AF_XDP busy-polling and other NAPI-aware paths
>>   can now retrieve the correct NAPI via get_rx_queue()->napi.
>> - Change is tightly scoped to the idpf driver; no UAPI or architectural
>>   changes.
>> - Locking adjustments are minimal and consistent with net core
>>   expectations for `netif_queue_set_napi()`.
>> - Similar pattern exists in other drivers (e.g., ice, igb, igc) that use
>>   `netif_queue_set_napi`, which supports the approach’s correctness.
>> - Note: In the rare request_irq failure unwind, the code frees any
>>   requested IRQs but doesn’t explicitly clear queue->napi for
>>   previously-linked vectors; however, `napi_del()` runs and the
>>   q_vector/napi storage remains valid, and normal teardown does clear
>>   associations. This is a minor edge and does not outweigh the benefit
>>   of the fix.
>>
>> Stable backport suitability
>> - Meets stable criteria: fixes a real functional bug, small and self-
>>   contained, limited to a single driver, low regression risk, and
>>   conforms to net core locking rules.
>> - Dependency: requires `netif_queue_set_napi()` (present in this branch,
>>   net/core/dev.c:7159). For older stable series lacking this API, a
>>   backport would need equivalent infrastructure or adaptation.
>>
>> Conclusion
>> - This is a clear, necessary bug fix enabling expected NAPI-aware
>>   behavior in idpf. It is safe and appropriate to backport.
>
>While it's more of a feature and a prereq for XDP support in idpf, this
>generated explanation is actually good and precise. I'm perfectly fine
>with backporting this.

Thanks for the review and feedback!

-- 
Thanks,
Sasha
