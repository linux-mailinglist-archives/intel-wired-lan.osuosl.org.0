Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFB7BFC27F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 15:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6432D83281;
	Wed, 22 Oct 2025 13:31:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hQQkKpSSCGgP; Wed, 22 Oct 2025 13:31:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5C2383396
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761139916;
	bh=nfS65EWbZ6cLK55095r4en1XlyixhtgOs3eEuAyWNxQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RmWEaLrcYgb1U9ni6pzY9ILqD7i1GQUW2PKBrRMnQyrV+w/DWlzfyBwit17HoCyN4
	 JMkwqZ21YH/rbRNmZqXZNkEKgLwJ+YUYpg172XXC7UwVKWbf77RG7si+71kAZGxDzr
	 ldGc5dZ+7HHMRiV3mrAn+rVNXkngWLav6gRhFBf/g4vKZUvjskzrdC6cfRKrHmFXYh
	 ew3d3BMqTrrSsxreJWNMzZyUKAXx5G5gog7BhLUvxkjLqmmvZANZIPPioHV1ARtwO/
	 DQuySPkFykUel062cwh4HPHb35EYE3TpCTzBrz9szpr7GNvBBHltljFKbZk8FdxAn9
	 PTr/kfWDVliUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5C2383396;
	Wed, 22 Oct 2025 13:31:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D3C8DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F6D740836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:31:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d3JArDoNVnHT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 13:31:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 70B9F4048A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70B9F4048A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 70B9F4048A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:31:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 867C440A24;
 Wed, 22 Oct 2025 13:31:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3645DC4CEE7;
 Wed, 22 Oct 2025 13:31:53 +0000 (UTC)
Date: Wed, 22 Oct 2025 06:31:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com
Message-ID: <20251022063152.1d3f29d7@kernel.org>
In-Reply-To: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761139913;
 bh=nfS65EWbZ6cLK55095r4en1XlyixhtgOs3eEuAyWNxQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RjjJD9D2D7PccDq9+DZMQuLd2j/GUWUuILGqD3gjpUcTrTekGKhVHR0JlTGvZ4s67
 KWc2csQM/nikR8P3DgkF3C/H/pt1/vYnQoxdc+yXnKlSPVchNEleavZWJI3mZ+uynF
 404sLpgME1N/IuxbeCDzuL4Qee94HnPqGFrmazm7vBqT2BpcX0W9an9XfcWB3CYVSX
 4l2RYqkiXKj3maUlsuQld14yu5lbWlzZaBwotqFZO9h82ZvZ79CSVpZH6AsBc0w2o0
 3eQrHovIVl2eLo9laGOq9Pybh/a6pTotWT1cmoSIteYXKimqDnSsncRYCp3wI31iCO
 k497f/x5o5coQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RjjJD9D2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 0/6] iavf and ice: GTP RSS
 support and flow enhancements
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

On Wed, 22 Oct 2025 15:12:19 +0200 Aleksandr Loktionov wrote:
> This patch series introduces support for Receive Side Scaling (RSS)
> configuration of GTP (GPRS Tunneling Protocol) flows via the ethtool
> interface on virtual function (VF) interfaces in the iavf driver.

Please don't CC me unless you're also CCing netdev.
