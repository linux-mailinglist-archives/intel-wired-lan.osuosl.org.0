Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31322CEF750
	for <lists+intel-wired-lan@lfdr.de>; Sat, 03 Jan 2026 00:14:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7840408AB;
	Fri,  2 Jan 2026 23:14:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wMuEOtfD7au4; Fri,  2 Jan 2026 23:14:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5231F4083E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767395682;
	bh=HmmPZG6IS8uigjEdW6m717qkKYszywP2Y3h96XbzDgU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hSK7FKiKZoEnKGpp2656NufixywsO37AP5opsr3Rt8DCvpJVKDNQEca3uXWD+VQC1
	 f30nzBRRiaZzLUf6yL58p4oBu5EONTkdkHDj3WibQ8v237yWRTyTzn0Gt6B42geRDp
	 E/y9jeuHBMOUs79UlQ/z9Zin3CoDQcA9z49CZyq8zl3mUQ4rpQ40d2Yq1GsjEcQtXj
	 g8ORP9xh5HDfaXNTJbMqO8Ob0mduHTX+AtVAHq0+rV5L/JNHxy3b55fgxBLuhmzy5H
	 V9Dj2Ez1X7rHXAu7qQ56S4hSztxXEaI7ZykPNaYejwI/BAtoSOKppXFghOJgSDjqAi
	 Dk7OJsuyaSqDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5231F4083E;
	Fri,  2 Jan 2026 23:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E702249
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jan 2026 23:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5050340831
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jan 2026 23:14:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KTuRjBHkBRNm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jan 2026 23:14:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 85E4C40830
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85E4C40830
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85E4C40830
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jan 2026 23:14:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C95306013C;
 Fri,  2 Jan 2026 23:14:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F27EC116B1;
 Fri,  2 Jan 2026 23:14:37 +0000 (UTC)
Date: Fri, 2 Jan 2026 15:14:36 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: mheib@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, aduyck@mirantis.com,
 netdev@vger.kernel.org, jacob.e.keller@intel.com, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <20260102151436.767bde60@kernel.org>
In-Reply-To: <20251218121322.154014-1-mheib@redhat.com>
References: <20251218121322.154014-1-mheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767395677;
 bh=HmmPZG6IS8uigjEdW6m717qkKYszywP2Y3h96XbzDgU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MpYhdAt06I58zPvsTr+ruUk474xZAavWv8obyE/EHysC+ZuXSNJhMpRIg2MDzz7XN
 Btb46Mt7OMwpxT+ImNvObKBzM5VYh60QCy28hlVLTnUmrAXGys/IFiwnOin58aE98P
 n74Bs8xsJmJ2rTCuqPME9cUEc2TZZwEFvL7yjKj9Lnv5ynisojYKGKtCxBzm5CvKFj
 LwOWfbqBbpwLetkbPTGd9AEBdmrHFmu570/H/JcVamPt0D2EZb7YtYCf2PRmzrOBtK
 Nss8r32IB8SlbhqSXR4Tq4bs8WQ1xt/JijyY6vEE6keUDt8PvDaQrVHaHZYIbP2UoQ
 aIbRCRwwcflfQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MpYhdAt0
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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

On Thu, 18 Dec 2025 14:13:21 +0200 mheib@redhat.com wrote:
> Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single function")

I doubt this is the correct Fixes tag.
The locking was reworked in 1ead7501094c6a6.
