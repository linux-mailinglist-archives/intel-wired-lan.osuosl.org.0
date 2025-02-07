Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D2DA2C028
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:03:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 431D44297A;
	Fri,  7 Feb 2025 10:03:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BAhO0Dt2TP1u; Fri,  7 Feb 2025 10:03:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 559E44297B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738922632;
	bh=xzQH5B9gvyGKL3SI8J350tHaAbtrVcxEXafeT2gCWc0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=71fm36LpJ/ivawNjgKKxWwZ3exBcqlAqLqIE/PopKlfA3rwgonHh7PewH5+Wv+FY5
	 7eoKcdJnP6iSdYdiysqNGRziz6Rl2GMBu4GDi3aBHjDyZcZPyfeOxVONpvy+sGX1jQ
	 JvFeyYeZ0F64SZblY0lUgUYNxiR8y1s3yHJg1Y2IAhXhHZPhcsu49a2ZzrloKimV1M
	 S+XIsSWIsXQH/y2TQ+BhkYn/uiTj7cmKm/nGeLGsK3evuRbeMNUWp2KH5+CVPuKI/L
	 ke0q4Qv2oaq8KRbrUhTZD31t/m670It+uz410WuqKGCgT58O2kmYDvog9F3Iw4o8R2
	 pSc/b5cPtE5ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 559E44297B;
	Fri,  7 Feb 2025 10:03:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CE4A8E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9FE460892
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:03:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XbPx89bTUqN6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:03:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 47A4F60860
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47A4F60860
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47A4F60860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:03:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C5E7B5C495B;
 Fri,  7 Feb 2025 10:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7AC2C4CED1;
 Fri,  7 Feb 2025 10:03:47 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:03:45 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20250207100345.GK554665@kernel.org>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
 <20250206083655.3005151-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250206083655.3005151-3-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738922629;
 bh=irkuJsf+eKqHKECMsoVCgPUQWSyE2A9Ww3r9L75BeqA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DvKJgKhBLx/fqH7+y1BUGDOcedZRe1uiclCtCKU6D+nYlBC4Mw8A1B4j82wrbv+SF
 3yqY3QYLdfe2zW1Qv7Qp6kKmsl/P3vA32OudWGSzlNC5MJoyJAli2KoLT23NkOOhsE
 kG5Q4YtKQyGu/kIo/avOjWji07MLsv9T6AeIqavMv4MW1H00tYbeQqirifnBydK0Hx
 O81h+wcvuSBP3E8vTOiWgFdLYJ3h3bXeFtFH7C8r6GhLbpVqOk2Fxnodhj4paF18Nh
 +9ENAKM44c9hMpr7/jj3GLrFhrW9srI5HeuyuqwxmlAuE5mh3yifSy8r5wz+0bFGCG
 004gV5GTracSA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=DvKJgKhB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Refactor E825C
 PHY registers info struct
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

On Thu, Feb 06, 2025 at 09:36:54AM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Simplify ice_phy_reg_info_eth56g struct definition to include base
> address for the very first quad. Use base address info and 'step'
> value to determine address for specific PHY quad.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

