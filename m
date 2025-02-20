Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72170A3DAFD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 14:13:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C98483A91;
	Thu, 20 Feb 2025 13:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xwyPZF9gHNI; Thu, 20 Feb 2025 13:13:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14045838B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740057222;
	bh=3CMGz0e7HPpaEPPltfuOZj7hb1sFhZriOUBJV5LJjis=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OoXoHnDbhUN+maRzxvZF3EoNzTbd2ZRtfRiprrHyplcwEGSkffnXy2bvr/yOKLc/B
	 9Zpjql08ltvE1kj3z9eJcUvm1g8SbP+GoBUejTDs+mwMzU6HjFwbGEx9Qh7jcZ3psH
	 33x14Yr4HaP8lA/zar9lM863NcS03ktK+s/YzJVLi0BoI2bMoRO2o2y1OhQByi5dl4
	 TQjjX1XNmI6s5a1ZKZqk4yYKAiPuEHp+cM/ycjVkZuXHtooQMHulo5tF3QdvTBo+r2
	 pdR0NXGcue/+v4CtuMiSDu8qC3YWaXGVc2xfi/JS8WaChxj4YOc5L4u99MxXPEYeu5
	 HZjIK7QN/Gsqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14045838B2;
	Thu, 20 Feb 2025 13:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 914ABD92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80D726084A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJse14npNYr5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 13:13:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DEA3F607DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEA3F607DF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DEA3F607DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 094595C587C;
 Thu, 20 Feb 2025 13:13:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B41FDC4CEE2;
 Thu, 20 Feb 2025 13:13:37 +0000 (UTC)
Date: Thu, 20 Feb 2025 13:13:35 +0000
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250220131335.GW1615191@kernel.org>
References: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
 <20250207180254.549314-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207180254.549314-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740057218;
 bh=WQcEldoWuMY6VD0LP+8O3EEjoZrdZmMF74r13S0RwKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KQ1ymUiMCKGtZOeo15FjA+xnOiX2xHNY4jqtmA0dSTQayzX+9IAEmXhvD5TdCpmF1
 2hiJYNpIuaZxb8cecPil++fiZpFZia7HioE1vdUB87yGOsEwJaMdd1jf9BSs3rALkv
 UWPQmVtp72Pr8iavg5wCD99rUilsKZqkgMUX34ZsQYYd1Bq7TIDITClLrlsPiemxPU
 RzQl9Ads1Wxzy/ABPGhGDpXRRudkHG8Cqd8dMRf0ovEJjNrcX0wd84h6oDku4yxnVR
 ELONhRGhMkohFOxte1AhH8N1OcXdlglM8tnUErGhDsVHFO5dRF9hMzX+ZzfyEe5Qrb
 I3p1JMdkf6jiA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KQ1ymUiM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: change SMA pins to
 SDP in PTP API
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

On Fri, Feb 07, 2025 at 07:02:53PM +0100, Arkadiusz Kubalewski wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> This change aligns E810 PTP pin control to all other products.
> 
> Currently, SMA/U.FL port expanders are controlled together with SDP pins
> connected to 1588 clock. To align this, separate this control by
> exposing only SDP20..23 pins in PTP API on adapters with DPLL.
> 
> Clear error for all E810 on absent NVM pin section or other errors to
> allow proper initialization on SMA E810 with NVM section.
> 
> Use ARRAY_SIZE for pin array instead of internal definition.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

