Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EF6B54662
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 11:03:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B1AE821F1;
	Fri, 12 Sep 2025 09:03:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F0rmVZddHTCC; Fri, 12 Sep 2025 09:03:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3D0B821F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757667800;
	bh=KHX6OPQQMjt9PieKvJCx57pGXfbkMPAVb3ulaAgb5s4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LIlVPdiWarn19vAjodm0lllecSoK+N/J2Eq545VNv7x5+HymSghcQiSgYH7ZDHj07
	 0Zz3Xovvu829VbaNSPCzlY2mGO9gRnQ3+NuzMBpI9IihkIaRqTpLA0O6JFH87hdbJJ
	 s7kmuMX0rMPk6P0BzDKIwR+77NKCENvFGyPf5qsQ3Y6lPsO1G3o73lsctEqfrOi+R+
	 AzoP7Ip2BiIrMKKfjwqc5o6/3HW1RpoXLNBI/YWr2/2jIoDmyPNhuPOtZcwwtiyg/h
	 uPcGxrW941LqpHv868gxHLZJ0tCLezCfQ6xXvUvNF6KdjZoqjBqSiKVedTclwZa0OH
	 n3XrzkaTFW9Ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3D0B821F9;
	Fri, 12 Sep 2025 09:03:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 376ED12D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:03:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28D6B60B17
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:03:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3bWSZupuw0A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 09:03:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E31D60B12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E31D60B12
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E31D60B12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:03:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7042B40750;
 Fri, 12 Sep 2025 09:03:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1ECAC4CEF1;
 Fri, 12 Sep 2025 09:03:14 +0000 (UTC)
Date: Fri, 12 Sep 2025 10:03:12 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250912090312.GV30363@horms.kernel.org>
References: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
 <20250829101809.1022945-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829101809.1022945-2-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757667796;
 bh=TGBF9kfFXPbq33CGNF0hdn+YkJQ/pyRa6a0HaCpCKD0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pT3M7BzYqPCV+EbNPePpgMcx6reAU8ASo6Lt4/fESd1haOrCFCfushMbCXfAo/SfL
 koI2Iq6h3jUor2n/eU44dHRdK+BwQh8ITNYihZf1mlPXDQr0bM3e17XBvyPxviEAJQ
 2gMpAcZk7UYY3ssrIz9KPhgWwJeWp1KpQpcYRyqcodtlXRnzCRbpORTnb5lLzj5o+G
 tAcGvCvUheZHfqxQ7zLA5Dr465JuFexZzTTAPQd8x4z8T9J3m48P3IKJU3IKjG3e2v
 /KVXaH47XPPzfnor4BECTQnkiiz4pjevXXLiG+j6FxXFVLn3qpHmaxXLaDvLiBeX99
 VMzoVyv0TpqIA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=pT3M7BzY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/5] ice: add flow parsing
 for GTP and new protocol field support
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
Cc: Dan Nowlin <dan.nowlin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 29, 2025 at 10:18:04AM +0000, Aleksandr Loktionov wrote:
> Introduce new protocol header types and field sizes to support GTPU, GTPC
> tunneling protocols.
> 
>  - Add field size macros for GTP TEID, QFI, and other headers
>  - Extend ice_flow_field_info and enum definitions
>  - Update hash macros for new protocols
>  - Add support for IPv6 prefix matching and fragment headers
> 
> This patch lays the groundwork for enhanced RSS and flow classification
> capabilities.
> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

