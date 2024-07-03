Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871659267F8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:20:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D28541B61;
	Wed,  3 Jul 2024 18:20:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 68NdbSLQ6m-0; Wed,  3 Jul 2024 18:20:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABBAA41B5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030810;
	bh=Cezcu5pAdKdCarFy+kSL7F0kA/ishMft28S/kgS0cVg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fd1/is9sq5EIdSzc6ee5WN2GMcvv4d46IAii6rnNrHEAr8dnIiUwpsYxJNS0o8Ws6
	 +u5zXXTHSkn19s+gvpBgLf60VJWoT6JbwnGWGh5zfqFQR2of3S+peOoZN1WEUrE5Cy
	 v40GAraYRZtbSawkzGEyWRqJoVLCzC0c5QfjeKsjIU3ixL5s21XSpaPbMv5WZZJQlJ
	 qmniHb3T490VriyeSqEUjuIns6FhOeFusL1OlSWUr/BR48BYoXdV5kSItYJzX0bFw4
	 5sfFDRK0bW12tcnmkXtQuNZ2PAkU+wLuuDrAsk2BtX3xoqi0hrfmTl+qRr7kAt6qln
	 Qz4J6W8lljixQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABBAA41B5C;
	Wed,  3 Jul 2024 18:20:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 912751BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A79F419AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l4heZNWjKRRD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:20:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF9F2419C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF9F2419C7
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF9F2419C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id A9696CE2BBC;
 Wed,  3 Jul 2024 18:20:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0F46C2BD10;
 Wed,  3 Jul 2024 18:20:01 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:19:59 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703181959.GK598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-12-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030803;
 bh=OARh+v8zMM5nB/eLwibX50fiVKzoI2wXnMGExKoFIEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mGwlQJybUv3u/FbEUpTCCzrFphs7ieZJtuID/AKRMA7DtnUc5RMTL7y26hLWj8mqM
 2/54oiJpR3r0azlMeszO243NwTQ83zfN+lhy0j1+8vM4J/JFGNcc18M1Yr5wjda4Ar
 Tq+FFb2wBhHWmeacApAGjm5N1azreOX8rBk7iW7RbabQnHQp3SNKTwsmgJ9D4ixZW6
 nA/nTPvong4wFKgX3AEyqL2w0M7rLDYGd0LgBs7eNNY/QKfqGJ/z7inYOruBSNklQj
 PxZ4r4eP9dRppED7duecRY6d3ElOw7tJlPSNibe/sK/ziKQWKVLJ1ILxzlkrF6sbYh
 TFWYb/lCemvHg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mGwlQJyb
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 3/7] ice: Align E810T GPIO
 to other products
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 03:41:32PM +0200, Karol Kolacinski wrote:
> Instead of having separate PTP GPIO implementation for E810T, use
> existing one from all other products.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: restored blank line and moved enable and verify assignment

Reviewed-by: Simon Horman <horms@kernel.org>

