Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 296939902F5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 14:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4AD581EA0;
	Fri,  4 Oct 2024 12:33:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nxfb_ST9wkPv; Fri,  4 Oct 2024 12:33:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A909F81EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728045227;
	bh=K7lRg6hZSR/v4JvPkpOaJoKi0h7T1jBWFQC5B1lFVEc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DcK+PwOVSsoZSVbNiU9IK0YY6OhpzGvFstxTVqt9FR7eteoAmeYsxiEux7mFDyWWO
	 tQCWFl7RyNsaRuEAJzIKtdejEnFHjolIGycrEPrmcE/9n9zzFs1UzU92dBpQwyUAtB
	 97akU3nFRsG7fAtvx25olC9CcliF65eUgiJDkAzt+oQucqp5vhPgSVmI9pmn7vQ2tr
	 mOCr9BeP19e22L5YwZ3TDOU4vZjYs/6uC5tSbFOHzwEsHZa8wqP3FSlzJCp7+6OriX
	 7D1L8reDV1PrVZIELVKYMuckikgI8Sj2h8Vp2Kx1ve88NFmb5cjozP7ETUkDDQw3NF
	 Ah4EGhThGmjcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A909F81EA9;
	Fri,  4 Oct 2024 12:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD6B1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 12:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECD6E81E97
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 12:33:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1mdXf7CH1gH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 12:33:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4CFA181E93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CFA181E93
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CFA181E93
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 12:33:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 56EB2A44887;
 Fri,  4 Oct 2024 12:33:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 474A2C4CEC6;
 Fri,  4 Oct 2024 12:33:42 +0000 (UTC)
Date: Fri, 4 Oct 2024 13:33:40 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20241004123340.GH1310185@kernel.org>
References: <20241004064733.1362850-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004064733.1362850-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728045223;
 bh=9DlAI+R0PWDvT9YhUeEPFvBb0TPq3ZflRnkFW+QULHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C3+ws2tK+CIEb5jWcNCzPrUtfMTxpf5JwzajlQnOS2xyt3jqrGMV16zSWUKz09jpL
 Cs/jFrUlwzy7V2xDxCa1oJHQUyjvmrBge4Bvsuyh8WYBh3AAU7WE5BdUvSZFrXTP/C
 cObzi2IuifcCPbYjXAkBCXl1LwpAwURZFwuPIO1c9eSqmRHeL3F0n8OzjofipOXac+
 EOz1XpF0F4vR7TS6nYfjuXihiruu3szf0nPwhBEKBVMy+cFJCxMM+lOoMAFhyV8oTo
 hFQU45DYWIJ8SrgbS3LUTaKfIwlI7yMMl9FVGc0c+QmEl/DXtnHHfnssm0jwN7iqj7
 aEklM8sG89fTw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=C3+ws2tK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add in/out PTP pin
 delays
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
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 04, 2024 at 08:47:13AM +0200, Karol Kolacinski wrote:
> HW can have different input/output delays for each of the pins.
> Add a field in ice_ptp_pin_desc structure to reflect that.
> 
> Implement external timestamp delay compensation.
> 
> Remove existing definitions and wrappers for periodic output propagation
> delays.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> @@ -1767,6 +1778,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
>  static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
>  			      int on)
>  {
> +	unsigned int gpio_pin, prop_delay;
>  	u64 clk, period, start, phase;
>  	struct ice_hw *hw = &pf->hw;
>  	unsigned int gpio_pin;

The local variable gpio_pin is now declared twice :(

