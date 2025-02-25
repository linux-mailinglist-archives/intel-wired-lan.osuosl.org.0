Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 084EAA443ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 16:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8530D606E2;
	Tue, 25 Feb 2025 15:08:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iaSjSb64Ogss; Tue, 25 Feb 2025 15:08:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D378D60087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740496094;
	bh=OlFPNc8plEKJeSWqJ4NK1A5aaGWCdus9PhmO7hs9Rkw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vZkSa4GCCLQmjx4Bz3Ib6XrRMFJDA42cZBRl/XuJWPTbRb7Zpq2dfGv4X6NdQ0Lo1
	 oenzsHtbtTbtIavXmNUrarai1OTia3qONLuYmaxX4UkdTQKLdX9W+pPGbozrIur8e9
	 kPXuYl4gTrlbWdZRXDPgM1cUSFCUbYo1oomEbwR71EpGkdVXuUBkVAdWgQMq2nDC1I
	 2h8nLO48f7Eyxg0pmFviE+Ll/GRFUSPn0SXovk9lz4rJ78ask4pHAtFFAeopWecVBA
	 XT5O33tLHyw7o0MfWwtfnTXS4IPAQ80pNoYwBHO6/mpMKnfgQDcx5bIGegU2Nk8r1U
	 aCc9/ne54ljmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D378D60087;
	Tue, 25 Feb 2025 15:08:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A71702DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9763681027
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:08:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HR63joQj4ZLd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 15:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 065B481083
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 065B481083
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 065B481083
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:08:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4D7E26126B;
 Tue, 25 Feb 2025 15:08:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A596DC4CEDD;
 Tue, 25 Feb 2025 15:08:09 +0000 (UTC)
Date: Tue, 25 Feb 2025 15:08:07 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250225150807.GB1615191@kernel.org>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221123123.2833395-3-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740496090;
 bh=IbCTGBLnXSlV+G4vQ7LBQedicGv33RSpdl3CE0jDfRw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rVc/oR7ddhu8AxKtcy0EyzkuV/eMKmDxhGN3OUJ3alx/+F6Sv/RX5mnC5ibVRkpPy
 3DX9R+Mg5Q0t/j0DFyU0fe8zGgQIX7aGZnOamndDznH1iuRQ37KTpVmBixnLs8Wy8z
 VCWKv62AhAbWly3rZYkNNIy7egrzsuUAJJgFVo840gGHmWCCdZJDgtc9PwtOXq9q8b
 WwJvZo4q6UKgyNxTGn9ODn1Gn/GCLn9Dc4mxfUKdJavkR/8gjqlvUDf8MVK0GxFWxI
 NJ7iK/GVyu4wQZJMzIcqt6jDvll7Ff3uULPsrdzdr5TlVo4MDVimIuAZL7/DSCNIlw
 kddkPowX3zpuQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rVc/oR7d
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: refactor
 ice_sbq_msg_dev enum
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

On Fri, Feb 21, 2025 at 01:31:22PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Rename ice_sbq_msg_dev to ice_sbq_dev_id to reflect the meaning of this
> type more precisely. This enum type describes RDA (Remote Device Access)
> client ids, accessible over SB (Side Band) interface.
> Rename enum elements to make a driver namespace more cleaner and
> consistent with other definitions within SB
> Remove unused 'rmn_x' entries, specific to unsupported E824 device.
> Adjust clients '2' and '13' names (phy_0 and phy_0_peer respectively) to
> be compliant with EAS doc. According to the specification, regardless of
> the complex entity (single or dual), when accessing its own ports,
> they're accessed always as 'phy_0' client. And referred as 'phy_0_peer'
> when handling ports conneced to the other complex.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

