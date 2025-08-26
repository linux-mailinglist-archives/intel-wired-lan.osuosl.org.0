Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B70B37090
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCA63404F2;
	Tue, 26 Aug 2025 16:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rOTWfT7xSu3i; Tue, 26 Aug 2025 16:36:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F3DD404F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226176;
	bh=kQhrFgAVYjLH2NbTC+e5Itm42CqDknGpI7jbkYJ1yac=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4I3uHqiuBKGotuotEl/KkCTLmhS+k7d4a22yVlj8KAaV4Bbz0TVyFlobZLYJOgmbV
	 9Q1Qy7euf3ecLfz0IjmUWlrjk+sAbGF8no/UinchxONu6FHTfky9k/lPS9IYa/XGX5
	 BEBO/V13I8v1BsarNDKlHlMjjgwGZi7hqHW8kT8pAEWjmc3gLq3w4gTTAJJSQZmsii
	 T379N6AXwTW2eQPSG+BM30/AeZQF/EwQ0ylkqRR2c9FCiMMZGCD5ManJ89chXQidOo
	 cuYvxwoo4jqtbF7Iapvfeeed3gf0bzl2RhkThejeTsrMZfrzVrUPJaUwXTAP3gSVPR
	 9lw99aJTTTr8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F3DD404F7;
	Tue, 26 Aug 2025 16:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 41496B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27C2D4008A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Tbk_aEP9eoR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:36:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8DB1140080
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DB1140080
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DB1140080
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9D9CF601E9;
 Tue, 26 Aug 2025 16:36:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28523C4CEF1;
 Tue, 26 Aug 2025 16:36:08 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:36:06 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163606.GJ5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-6-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-6-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226171;
 bh=EJ98GjaezkjirbUv6wCZyS8npF4TyMEdwhhAxJrJCOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZpB6Jgm0sLzZHvpEcduIawO+NsugFIOKapOChDSoXIquWEWUU8JXrW372q0bnYprL
 +/vyFz3DunFXxHXkEFbbRSZssbZsc+mLuChpzs4HYdRj69ulYrKausBJme6DYyq4GL
 GVFEY4rsjdv3pfivdlrOYp7hCerK49IZ0gIvFCpI5HcHCR2cvqts941xMl6kz+Tfue
 cdtLEZEL2yknRDHfcSTDfsaqe8d0StuJzPhIwKiJlW5JLLm1w1mTQA3eKw92C3fgPr
 BEZahZl9ZivuKaDpCjB3gruALkG93WfOYQJOubYPmsbBZkxfTR916y3AkcKLp2whtV
 pIU/tUr+S5pqg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZpB6Jgm0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/8] i40e: fix validation of
 VF state in get resources
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

On Wed, Aug 13, 2025 at 12:45:15PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> VF state I40E_VF_STATE_ACTIVE is not the only state in which
> VF is actually active so it should not be used to determine
> if a VF is allowed to obtain resources.
> 
> Use I40E_VF_STATE_RESOURCES_LOADED that is set only in
> i40e_vc_get_vf_resources_msg() and cleared during reset.
> 
> Fixes: 61125b8be85d ("i40e: Fix failed opcode appearing if handling messages from VF")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

