Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1189BA0D2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 15:38:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10DC2614F6;
	Sat,  2 Nov 2024 14:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7vz_m5fXTyTc; Sat,  2 Nov 2024 14:38:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 519D5614F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730558307;
	bh=zUVr3RaTW1/6+H+Bzn86+8cBXg3VrQ4PPLbG/nDMbXA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=viazMNg+aq9Dr+JVScDGu+hHFeuOFnVXAx+QysHSPfKdvFctxIE0jJMFBIxFx+5EG
	 GqqTxCRqy46wyk1FmKNhGbiSLiJpcsiV3oNWbUhLM/ahxK+hGUlUKkJa60QHS1GQZX
	 PxfPlJQC5hVsyqFn/hqD6wsBHsetlrDAag7RwUwuymu+7IhO2FOsnXPcypx44EgIS0
	 XX+FeNPfMUjSDIoQyNzfl/EOiX9aUN8PoHbnLD7b9yPZdS5NyG3AwY+wwwN5aPwiMt
	 4JT9+IHaDKKhySwkvxpqeQ/nwpmSB2ePzWTCunNyGCBTLPvCBbzTVSZKjsv0h4yztf
	 /5Uv1m61ScKhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 519D5614F7;
	Sat,  2 Nov 2024 14:38:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87AA7979
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 14:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76787820E5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 14:38:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V8d4T1X3_P7l for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2024 14:38:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C8224820D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8224820D1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8224820D1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 14:38:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EDE355C0F6C;
 Sat,  2 Nov 2024 14:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABF18C4CEC3;
 Sat,  2 Nov 2024 14:38:21 +0000 (UTC)
Date: Sat, 2 Nov 2024 14:38:18 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, david.m.ertman@intel.com,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241102143818.GM1838431@kernel.org>
References: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730558303;
 bh=+N+p9T5iVSPg9AVXsMwjJAI3S/vgv/iNp2VTOBZkfdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RtI2VunKTSYj7mLSSq4wP/VDU7Sc8KNK9EzVrMeMqqQsiitcFGJpAhyVxVfCZiNh+
 DbS2eKYCc/3PxwylDoDR/ZYFQHTnO2EwK1l16icDEd2lyBmpf1dtTulbDxnUp00CTr
 H/7h9Gz5EnZ71DR1oD0tz6JAS5VtlI7s1AYpUZb5QLI6t2ogChLF5zKZ2hSgZNi/nE
 Xbt9npfTeCSEkfkuQ8QkzzQ8tpK4gvRA51AkxBdlLah7LecAHqSrlWXwTd0w9sZ+i+
 G7/3qrCNcstaGc/8e7NDSufO8LiYYRi6V2IwNmtVVO30JH4qQJ038qnECNBPRDJy2f
 kstrBSFjPH00A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RtI2VunK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable
 type to s16 to store -1 value
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

On Mon, Oct 28, 2024 at 12:59:22PM -0400, Mateusz Polchlopek wrote:
> Fix Flow Director not allowing to re-map traffic to 0th queue when action
> is configured to drop (and vice versa).
> 
> The current implementation of ethtool callback in the ice driver forbids
> change Flow Director action from 0 to -1 and from -1 to 0 with an error,
> e.g:
> 
>  # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action 0
>  # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action -1
>  rmgr: Cannot insert RX class rule: Invalid argument
> 
> We set the value of `u16 q_index = 0` at the beginning of the function
> ice_set_fdir_input_set(). In case of "drop traffic" action (which is
> equal to -1 in ethtool) we store the 0 value. Later, when want to change
> traffic rule to redirect to queue with index 0 it returns an error
> caused by duplicate found.
> 
> Fix this behaviour by change of the type of field `q_index` from u16 to s16
> in `struct ice_fdir_fltr`. This allows to store -1 in the field in case
> of "drop traffic" action. What is more, change the variable type in the
> function ice_set_fdir_input_set() and assign at the beginning the new
> `#define ICE_FDIR_NO_QUEUE_IDX` which is -1. Later, if the action is set
> to another value (point specific queue index) the variable value is
> overwritten in the function.
> 
> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

This looks good, although I am interested to know what the maximum value
for q_index is. And, considering unsigned values are used elsewhere, if
using 0xffff within this driver was considered instead of -1.

That notwithstanding,

Reviewed-by: Simon Horman <horms@kernel.org>
