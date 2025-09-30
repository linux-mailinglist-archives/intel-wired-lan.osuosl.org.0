Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7575DBAC193
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 10:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B78260E7F;
	Tue, 30 Sep 2025 08:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 49AcBF037pjU; Tue, 30 Sep 2025 08:42:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DD2760E45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759221727;
	bh=bYrFKmESHxMWjeIqD5iWmb/yo19K7PG9UmdhbOEHUZI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X2qTFLFjdL+NBFvve2vemndhv8eH8hdE3wVsQEaOb31Z99CoemaJ1OAStc7xXr/I/
	 AuSUS5bpE0wCCwD9EMyAQ7f+KAWpGdDAez47+iCgx5BOV2RbzEagslrYik2xRATdfn
	 xNNLfQdA+NQoDIF1P58roMtmslcEDznSUQUJXbWAh6sK9GsuI4hhfRGGhbU3yqpY4n
	 o8Sw1SDahQxwVUTAo1/S9REjXI8buVr+zvIbpEzFarnhUWnWwotiQeAqGektCC5s3z
	 4u8h01kk8G1vLtCmbloWj6Tpd8Ov8huO3msI5Tohpj++U64cdE5ilKYoDfw0Wv1hUq
	 Q9zQJmwivK1qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DD2760E45;
	Tue, 30 Sep 2025 08:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 390AEB30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 08:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AFA360E72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 08:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5WMm3K4SpDbQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 08:42:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 461F460E45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 461F460E45
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 461F460E45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 08:42:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9414F44E85;
 Tue, 30 Sep 2025 08:42:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57764C4CEF0;
 Tue, 30 Sep 2025 08:42:03 +0000 (UTC)
Date: Tue, 30 Sep 2025 09:42:01 +0100
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aNuX2T6WisaUoNzy@horms.kernel.org>
References: <20250929152905.2947520-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250929152905.2947520-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759221724;
 bh=iUVDtDjP1G9Mecj12ZEM4sqr3FABZSmcPD6No9QUcKY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BGu/QJE653n0utKUNNhvWNDE3DI7usY/TYvdQz6mK8XsCgFIzBTAH5V3zH7pXQAyF
 nVBeohfo1chA0yp5cJYS9PY7mJhMMsbz4rDom4Wgg4yVH02BSxQfDJ8O+/w0j1oj2a
 C608SNTkVPsN8NTf6leHKomve+VJf5tG2ZGWAefbTcD19EQXvN8//aG/D42sevah+S
 H+o6XPm92DkShAtVBZgvyK+hf67x9q1DCkjb3DkZUwCjXCM2Wj316WxVtw4n6YdAV1
 IjgbfYHIOAJwo/2m4zMsNw4DGpD5eov98xdUD1koc2a0WTRLzV0xWADqyVJ7Z3xRAw
 Nr5Z+KBfM6d1A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BGu/QJE6
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix destination CGU
 for dual complex E825
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

On Mon, Sep 29, 2025 at 05:29:05PM +0200, Grzegorz Nitka wrote:
> On dual complex E825, only complex 0 has functional CGU (Clock
> Generation Unit), powering all the PHYs.
> SBQ (Side Band Queue) destination device 'cgu' in current implementation
> points to CGU on current complex and, in order to access primary CGU
> from the secondary complex, the driver should use 'cgu_peer' as
> a destination device in read/write CGU registers operations.
> 
> Define new 'cgu_peer' (15) as RDA (Remote Device Access) client over
> SB-IOSF interface and use it as device target when accessing CGU from
> secondary complex.
> 
> This problem has been identified when working on recovery clock
> enablement [1]. In existing implementation for E825 devices, only PF0,
> which is clock owner, is involved in CGU configuration, thus the
> problem was not exposed to the user.
> 
> [1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250905150947.871566-1-grzegorz.nitka@intel.com/
> 
> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 devices")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2:
> - rebased
> - fixed code style coomments (skipped redundant 'else', improved
>   'Return'
>   description in function doc-string)

Reviewed-by: Simon Horman <horms@kernel.org>

