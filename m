Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F069A1EC9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 11:47:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53E1181292;
	Thu, 17 Oct 2024 09:47:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fP49klhDELiw; Thu, 17 Oct 2024 09:47:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACA9F81135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729158433;
	bh=t9GkTGT81BnabqV5nhk4qTmc+CwP0N7o2ORDCHFvHJg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7sA9mZpfnbecwbQz8P/xSBqH25NsLxxFLrAL4NJCGvoeVJzyGl0Y280+TKQgst4o/
	 o6llVIUXhnDqgOxYvykaFaY/BHW8njjIGBlGwhtNI7nK5SMXBymsn9+9P/bYMpAOJZ
	 7HrfnQ3BHewLrmtYYrnEaPr9L7BMlVLkiq/bQX/B/KsmiK4xQ648KejyN3A+a67BbL
	 qtvsyxCBasrEri3JQFOirjkteqsdq7kIBRBKYgF5EmPR31ENliHPZQuE2h8aR1ojM/
	 ZbKuO7RGon4O+aNGRAGEPEAqwKlUc5C3lFbrSNuWF+HknyripjGEM4BPEYUbD7MOxt
	 xNMB+4plTFAjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACA9F81135;
	Thu, 17 Oct 2024 09:47:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F147C27EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC70B600B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QCJ4WncpJ4a0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 09:47:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 529B4605FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 529B4605FA
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 529B4605FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:47:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DAA0EA43982;
 Thu, 17 Oct 2024 09:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4222C4CEC3;
 Thu, 17 Oct 2024 09:47:08 +0000 (UTC)
Date: Thu, 17 Oct 2024 10:47:06 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20241017094706.GC1697@kernel.org>
References: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
 <20241003141650.16524-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003141650.16524-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729158429;
 bh=MiPUNWCleeiUeLWg7A/InmEPhEz/OV1p/R+auYubiso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qQreREBH47sjAdgaljKiVE2KlTqCEd2rMHl4+WfYBCeLHFUAqUomnIr6CTm9CLVek
 k65w9TZEEJkV5D+xcc5VgRB2OwaNXDDheevt2tJGW8RlLAqBXarvmRe7NsRlKeshS4
 5HoPAuWJBzFXXK6Web01MqcY9/EF6kXSA5Tdqp9Kz0K9jgzSCPUv2cDO/3YlwFU+hu
 pN7oqrHps21CVFklH02NS4HNPt3Gss+Basus9tiPO8AyNNTKj1Br8/ZxGSTvuXjDSg
 DUp9aOl14SB2Q7CPBBGf5K2lexizHOmGDy9k5PIfgSwTT9i+5fg/2GVJ3Oo0YgPjKz
 qq+p2dBjd5UZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qQreREBH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 5/7] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
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

On Thu, Oct 03, 2024 at 04:16:48PM +0200, Piotr Kwapulinski wrote:
> Required to adopt x540 specific functions by E610 device.
> 
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

