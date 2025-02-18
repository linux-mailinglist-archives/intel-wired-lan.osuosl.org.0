Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5357FA3A7B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 20:36:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03CDD81DE7;
	Tue, 18 Feb 2025 19:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2T89KVoZw01d; Tue, 18 Feb 2025 19:36:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ED05819C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739907396;
	bh=0oe8edgsE9ts+sEa4uWwZ/di5POMDIX0BLjoAh0Mtbg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GGdqC1D9wN9xWSVuB8XwveS5BTlD8UNbjitJMCwJrV7uRnP4VuO68LppqW7xW4409
	 lFpzMnj1E7i8GfufLBPK8ZZk9HRNX+ZXobdVxVrNaLYs/RLYL0jbzdSEQkkr919e41
	 YOJ4mpBdOWetKitoczhZxErgnIsYW8lAQ5gk6OY8M0W2iE7i7dAV8BQWg9lYeAzhYb
	 qTrtKCiq4hAlxjRpMM2DmuxP7RppSkIHCoXSKYWPWkHyY0V5WTrQ8ZKqxFrYOjtHaX
	 Q+ZBwOtB++sxUlLAXvmwrlb8MzCDk+zp2Ab7oKrhFqrfP7tsYCgVTr10L1ujvh5OSY
	 ngKso19xMH2lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ED05819C8;
	Tue, 18 Feb 2025 19:36:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 05D9FE05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03D1C4029A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:36:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VeRoCdsGeuTK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 19:36:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B41694011E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B41694011E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B41694011E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:36:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6D4EB5C59EB;
 Tue, 18 Feb 2025 19:35:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3B48C4CEE2;
 Tue, 18 Feb 2025 19:36:21 +0000 (UTC)
Date: Tue, 18 Feb 2025 19:36:19 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com,
 pmenzel@molgen.mpg.de
Message-ID: <20250218193619.GH1615191@kernel.org>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217090636.25113-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739907384;
 bh=rpy08+i5Ju1eRhG0DTlZGfECB5S6Bc7ltgjn/tyYVMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UaWsIK75PFWjaD9KDhCtqrBISkbXro9ej/bGiBell1nUKupW3KjmUnIEw0PDcsUA2
 OEcA8ObMU6DF17z9ZX7ZNPriEqSZ7x5REkzqYLbzsKEINflF/0X456aU5dByt9v7hc
 j7+cb5DzbC41gE9Xlpab5MzNmiUSMdblAdzA0wgEiaMY9mha61Y3vD/u7PnQoDREM5
 eiOZziJtbGQJCBg38+l/I7vNblTblFBjXIUGSBz96oIyRF0aYM24zkQjfudMaeBbn9
 R+1dBPv4ZuYfeoZ800SnVXLHz6EswA1VQQQqc/6JKN4w2WN9zdaiTFDmH5N58xLuR9
 er2BA+Ey6SncQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UaWsIK75
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/4] ixgbe: add MDD support
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

On Mon, Feb 17, 2025 at 10:06:33AM +0100, Michal Swiatkowski wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Add malicious driver detection to ixgbe driver. The supported devices
> are E610 and X550.
> 
> Handling MDD events is enabled while VFs are created and turned off
> when they are disabled. here is no runtime command to enable or
> disable MDD independently.
> 
> MDD event is logged when malicious VF driver is detected. For example VF
> can try to send incorrect Tx descriptor (TSO on, but length field not
> correct). It can be reproduced by manipulating the driver, or using DPDK
> driver with incorrect descriptor values.
> 
> Example log:
> "Malicious event on VF 0 tx:128 rx:128"
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

