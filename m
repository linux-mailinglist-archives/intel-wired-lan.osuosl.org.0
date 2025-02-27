Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED75A48716
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 18:52:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D6A581FD8;
	Thu, 27 Feb 2025 17:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Y1kCIl4QAIF; Thu, 27 Feb 2025 17:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE09281F32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740678767;
	bh=VmrEjjhs+t8JPqIDbS9ViF25EcX6wC/WVcM4VddStG0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qVjTa+dZbepGEVFsO4r6z3Autlq+G19/cqDhfEC2YOLyt2z97EHTKOuG3asA0E/Sd
	 608ShjmivuyQdnkqt8D72VgioEbxgf4g12Ca4HudHnxi3vDgkxIiWgwO4OdnhCrnEZ
	 6UnFn5EPvyTYOOObkABLnd4728WvzY6PAd9PHHNXQoeuZmfEpGCcnGi1U3H9cOa7lv
	 u24oj+J2vrtVtN2IqRpIDc7YQ8YWJrsDbqYMbQaFt4AJMTy7g1nizM4GAmPwwqqkRH
	 m0r36EPQo+AsmKMUC7uNhI9ZmqALV38+FfS2gibSk6d9ui8I7avLPUkoV8Zmhz7N6L
	 i2q2WKHnhOXGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE09281F32;
	Thu, 27 Feb 2025 17:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B77669
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 602C841395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqU6zId1tiiY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 17:52:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AB94B412C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB94B412C4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB94B412C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:52:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B62C85C6144;
 Thu, 27 Feb 2025 17:52:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 199F4C4CEDD;
 Thu, 27 Feb 2025 17:52:42 +0000 (UTC)
Date: Thu, 27 Feb 2025 17:52:40 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 pmenzel@molgen.mpg.de, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250227175240.GH1615191@kernel.org>
References: <20250225134008.516924-3-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225134008.516924-3-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740678764;
 bh=dThrQP7ix+WzmU48o7oNgP1GWMYf7MsMTrUWSD3Dh6o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UawygaGFyAOEaEp0itLr3m3kCqIwZxygzLvZau9WUPSsglmE7znuv8Rt3mNRTJTJK
 vhs7PQXuqHKbuUHrB3OTBrbe+T90kSUj/6n8MZltTh5mbypbrWnA9G8MmwQ8HxrHEN
 eHBm0UhMn3KG8NeYg82YJSmU3cw9mneg5N7Gd+SIOKzUsI/7Pwwonj6jBBjBIVrT2i
 eyErY3MRB17tazP2iGEFvmpt+5jXHinVMJMUdJ7pePDXjd9Rq+6AMt40XqVUVjteyC
 86p+2lyAiPowHzpswMcDpKVjGkqCUUbogpkvpjtvRG4L4JfL3aXTHKVTNeTDp2seH3
 FpqY3l+vzZsbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UawygaGF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix fwlog after
 driver reinit
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

On Tue, Feb 25, 2025 at 02:40:10PM +0100, Martyna Szapar-Mudlaw wrote:
> Fix an issue when firmware logging stops after devlink reload action
> driver_reinit or driver reset. After the driver reinits and resumes
> operations, it must re-request event notifications from the firmware
> as a part of its recofiguration.
> Fix it by restoring fw logging when it was previously registered
> before these events.
> 
> Restoring fw logging in these cases was faultily removed with new
> debugfs fw logging implementation.
> 
> Failure to init fw logging is not a critical error so it is safely
> ignored. Information log in case of failure are handled by
> ice_fwlog_register function.
> 
> Fixes: 73671c3162c8 ("ice: enable FW logging")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

