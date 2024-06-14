Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5331908C0B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 14:48:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73E1840930;
	Fri, 14 Jun 2024 12:48:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FmPViKZAskBy; Fri, 14 Jun 2024 12:48:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BD8C408C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718369297;
	bh=aQ5IvMxRCOEkKywATdO8BMPswVdJI3aXDIFvQLJE4qo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RPN/A/Oc5FzktB8dbvpr0KsoCPzvoVDoMyuEfGZjmidRY9XrVjRrWoZUX1RP8YW+Y
	 6ReEKqyzHlTmlm8DyYiNxNI6Y6v3oP/CGAIaX09fk3KRs6VF7+zFMkDbhah/XLydye
	 C79zM4z51BQ8yozBDex7HHnPBdnG9ccPxTTvrggIXJngzUBHm3bqubZ9g42fv6slm+
	 D1el7DN25Boe7pId3gRraKWo4mgD77WEYHBoVHnN6Q9byFTX5wpSSagYCLTiftcbfS
	 XbC5a1RFkzRKV56ijuEDKV6scnMriuHwda7HDW0tczAJeil3fjephnx2qH5+06vndj
	 X1WgsYBxScIjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BD8C408C1;
	Fri, 14 Jun 2024 12:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48FF71BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3521A4149E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SKvpdYW4SisR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 12:48:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4563E40467
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4563E40467
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4563E40467
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:48:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6C81BCE2995;
 Fri, 14 Jun 2024 12:48:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05F07C2BD10;
 Fri, 14 Jun 2024 12:48:07 +0000 (UTC)
Date: Fri, 14 Jun 2024 13:48:06 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240614124806.GO8447@kernel.org>
References: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
 <20240610074434.1962735-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240610074434.1962735-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718369290;
 bh=VmOYk6Qu9NWootxGXFwe8WoslXB6Nq+KnkrS82ihHfI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tJskuzA8Aj2eNhmbhOyqZcHXBUEWFN+Q0OgOGrtlhMtE0n01rvTsJ0XfZVsUvSxmy
 +dnpPZrXhh/tKzCrpZPaXMsSEm1Ak9yrbxiIlqd3ZYzdaiCI2oqtkO18PBeaC88epa
 gZDZZ3zf3AdE9PeWeigAyGTo7PyoWqYKCnfPQlbiXiRmmdcg+vp0BNUErIlL83scY0
 /efr4RVgPEUfoebq9CCRSD/lqnAoR7LT+Ir1KsUuMxKMAps8KVHIpf1IoTO3uL56ru
 tQFg6WZ0mDCbR0+2Db3Mu8fccTjj07erGQLBTNatys0bvfawg9tVBcG9eV8AjkV0ED
 gttLu8t81cv0Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tJskuzA8
Subject: Re: [Intel-wired-lan] [iwl-next v3 2/4] ice: move devlink locking
 outside the port creation
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kuba@kernel.org, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 10, 2024 at 09:44:32AM +0200, Michal Swiatkowski wrote:
> In case of subfunction lock will be taken for whole port creation and
> removing. Do the same in VF case.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

