Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1772AE827B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 14:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DC3983F70;
	Wed, 25 Jun 2025 12:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UWWIlrCNpKYq; Wed, 25 Jun 2025 12:19:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 971E783F71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750853979;
	bh=nPUnrn7PNUNTekRvTtuCBRFHV0Ai5Hw5PCLv6EHqBms=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1fjY8U5MziSPi28KpJGMIqH+IWzcIIXPU4SI5SJOGp2kqViTUzeQmP1kFhrHShn+l
	 zsn7tpK5bYwqx3E6iIXqHD6naXMvoWF7eFR+hotD58Ky7yGpHsT2acWK6TawDVthwq
	 Rg4LN/+uHFSCFbMEMfy8vcl/u1SZA+ri4T62LwjLlSGtSKKduG/YFsbvvTShHuUwJy
	 VeQTnbY6XZg2Pk9fer+RJOeTfLFjf4bZqO0KmZgzK1X5dZ4FgF73HkjFp8fEyGmZ3u
	 rIKlZfcCHX9tg+FyQsfEZkQApoK3fz5RvqSfVPaFrWoPmN96VLMEYLNRUxCE2b9ODZ
	 n/we0SmluDsEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 971E783F71;
	Wed, 25 Jun 2025 12:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AC7643F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C9224120D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kV5fkRrdaOr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 12:19:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E80BC40284
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E80BC40284
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E80BC40284
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:19:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2FB34445D9;
 Wed, 25 Jun 2025 12:19:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBC8DC4CEEA;
 Wed, 25 Jun 2025 12:19:33 +0000 (UTC)
Date: Wed, 25 Jun 2025 13:19:32 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250625121932.GC1562@horms.kernel.org>
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
 <20250625121828.GB1562@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625121828.GB1562@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750853976;
 bh=d3hbjcTYZBHF9JdqXaMJzsaAqNIFdJ1GVA4EtXfbBgQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HN8bGoMsKzd/xuQcs7r8vd48xPW98SCfE5ZrcTZ2rNmeQHATmVlLUMI6exKSbZ7sV
 lQ6ls+h+LPIWl62qfsdXwl1dNkrgSPj8bHsxLzYam/42u1Up2DKqMjtSBy1TYtxKem
 PdNJ6YekDw7uXoa04zqYIlDEeJHAhf+p5oYOEm5BsiVdtifv20cg5KSzy9BC9tJCDz
 Y7Vnc0okIzpdxh/oNCgiyPmpqGfGuS6D5pLyauAkwMRPaKDiwDl4/FC1Qdq3IjL5gV
 ruJwA6+lNKJcoUPoJRJvWmjuW5vEWEZNdUGsDhB5rswgk9UThn1+KqDjH8eoRRoVkU
 qNGO0oc6VXZtQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HN8bGoMs
Subject: Re: [Intel-wired-lan] [PATCH 1/4] e1000: drop checksum constant
 cast to u16 in comparisons
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

On Wed, Jun 25, 2025 at 01:18:28PM +0100, Simon Horman wrote:
> On Tue, Jun 24, 2025 at 09:29:43PM +0200, Jacek Kowalski wrote:
> 
> Hi Jacek,
> 
> Thanks for the patchset.
> 
> Some feedback at a high level:
> 
> 1. It's normal for patch-sets, to have a cover letter.
>    That provides a handy place for high level comments,
>    perhaps ironically, such as this one.
> 
> 2. Please provide some text in the patch description.
>    I know these changes are trivial. But we'd like to have something there.
>    E.g.
> 
>    Remove unnecessary cast of constants to u16,
>    allowing the C type system to do it's thing.
> 
>    No behavioural change intended.
>    Compile tested only.
> 
> 3. This patchset should probably be targeted at iwl-next, like this:
> 
> 	Subject: [PATCH iwl-next] ...
> 
> 4. Please make sure the patchset applies cleanly to it's target tree.
>    It seems that in it's current form the patchset doesn't
>    apply to iwl-next or net-next.
> 
> 5. It's up to you. But in general there is no need
>    to CC linux-kernel@vger.kernel.org on Networking patches
> 
> > Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> > Suggested-by: Simon Horman <horms@kernel.org>
> 
> As for this patch itself, it looks good to me.
> But I think you missed two.
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> index b5a31e8d84f4..0e5de52b1067 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> @@ -3997,7 +3997,7 @@ s32 e1000_update_eeprom_checksum(struct e1000_hw *hw)
>  		}
>  		checksum += eeprom_data;
>  	}
> -	checksum = (u16)EEPROM_SUM - checksum;
> +	checksum = EEPROM_SUM - checksum;
>  	if (e1000_write_eeprom(hw, EEPROM_CHECKSUM_REG, 1, &checksum) < 0) {
>  		e_dbg("EEPROM Write Error\n");
>  		return -E1000_ERR_EEPROM;
> diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
> index 1c9071396b3c..556dbefdcef9 100644
> --- a/drivers/net/ethernet/intel/e1000e/nvm.c
> +++ b/drivers/net/ethernet/intel/e1000e/nvm.c
> @@ -588,7 +588,7 @@ s32 e1000e_update_nvm_checksum_generic(struct e1000_hw *hw)
>  		}
>  		checksum += nvm_data;
>  	}
> -	checksum = (u16)NVM_SUM - checksum;
> +	checksum = NVM_SUM - checksum;
>  	ret_val = e1000_write_nvm(hw, NVM_CHECKSUM_REG, 1, &checksum);
>  	if (ret_val)
>  		e_dbg("NVM Write Error while updating checksum.\n");

Sorry, I now see that the 2nd of the two hunks above is for patch 2/4.
