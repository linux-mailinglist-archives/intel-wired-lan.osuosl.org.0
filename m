Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99100C93CBA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Nov 2025 11:55:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07AB940D95;
	Sat, 29 Nov 2025 10:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id At9w53BO0b-t; Sat, 29 Nov 2025 10:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87BA540A35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764413697;
	bh=bKEm4MwfshVBMRsDAFeHt4Orqal2ymfieCRTS4xN6+s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x+fvsRTRvUCxpn+jtF7BqihX3NMSjGsx6azhtv9+kBsw+I/wDiKKJbtlkXzg7DGF+
	 V9hR9xhubkM9QdPtDMY6dp0p8Iz5IgEsezps3ouQkb+enAE7F6xYWN0p7Xx7G5Wo/H
	 sy9Ya+/G+v/i6iSQwvEE7/PjGmNoHlJIdrQJKcvh+vmMU8vOJp5iR6E0UBVNYzBkaz
	 /koClFFKJvBRpvuen0SlvlV8tIQAgKyI2k4Rg/+7ZqitU3VXjbCVIfxNsLDo98Dd55
	 VpmWX8NpYxIjmtfHlwWro0DHmBhZOPaVFsJD1v9LeeWiAmRXS3W5BxZ/N4tT0lpwlY
	 l+JESqhz1srSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87BA540A35;
	Sat, 29 Nov 2025 10:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 79C44708
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Nov 2025 10:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FB2760754
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Nov 2025 10:54:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9y-bz5ep35gf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Nov 2025 10:54:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6A7FF6074E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A7FF6074E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A7FF6074E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Nov 2025 10:54:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D1C84437C2;
 Sat, 29 Nov 2025 10:54:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A659FC4CEF7;
 Sat, 29 Nov 2025 10:54:53 +0000 (UTC)
Date: Sat, 29 Nov 2025 10:54:51 +0000
From: Simon Horman <horms@kernel.org>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aSrQ-2nLnQabIO34@horms.kernel.org>
References: <20251126170216.267289-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126170216.267289-1-sreedevi.joshi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764413694;
 bh=KNVUGzbjxkkJ9TPlKItSaotNjp2ctuWkFyPczALT4jc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E9VEpF8zQDQUtR1tN1CIBLikWMOX3ZqU/3lgyYAmTjddsAQP5nvHPOKiIMLAt/wxX
 /sm17y5VrmneN9mck7S2dRWegdZqj6vGBkP/3OV/l+QAR6rTm0mgxopDkRx32DR92Q
 7pLfMS+S0SiOnlMf0Uuk+Jt6BDasAJeMR3z3LykhNgH8vwcYCQGcEwbri+CFCOW94G
 6sqNUCFwHD8XWnlCJV6oLviVJ4tCZMzTy2j5rChVlwj85ghWbak+33OKLtumIuVHD4
 2sHI6k+MPiacU06s3icQ1FL36qLBVIr+cAkNTl/7VXBGnk+xO62wkn9ah0p8QoS3wK
 eRx6L3MswiOGA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=E9VEpF8z
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: update
 idpf_up_complete() return type to void
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

On Wed, Nov 26, 2025 at 11:02:16AM -0600, Sreedevi Joshi wrote:
> idpf_up_complete() function always returns 0 and no callers use this return
> value. Although idpf_vport_open() checks the return value, it only handles
> error cases which never occur. Change the return type to void to simplify
> the code.
> 
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

