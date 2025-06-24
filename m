Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8077DAE6FE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1772360DEF;
	Tue, 24 Jun 2025 19:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4nCYHFSPoDm; Tue, 24 Jun 2025 19:42:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69EE960DFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750794164;
	bh=iUJXnWIRMddk3mXbrjaPWkJlsdvXNyl5f/Kx1o+sk7c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e8d32TnDFpV4kXWgbkiqr+CJOCSME4dYmM2W1NVQ+A8TwqJw4PEkFEwNWZzgbSgX8
	 9tbXvnBMPm5vM9gYIAohMG0cO7Cg1PAWZhKLD86D+N0hqoZ0uPykHbKkxv8z/+remF
	 AQfraRwnjLemsUcucRapHC2axThF/lFX5jmvue0YL/wNPUWRwBM7qQzi9wS1ai8AeU
	 vX/y1IyMdmE+IrkZvMj3z0kx8+TsGEUjVlfKCjlIXXlQqwZQBUBELEDIEoD/8FsCiR
	 N4JOCRFDZl4qu3Vr5wuiH3IXIFxjZwVaz4jbPuyg7W7sVnY8lZNQtaX2Iqe+QqTpxW
	 LRdtv9hDhn4Bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69EE960DFB;
	Tue, 24 Jun 2025 19:42:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2145243F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1ED1660BB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:42:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LKD6I8hNua74 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:42:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7460360A67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7460360A67
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7460360A67
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:42:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D6E2144542;
 Tue, 24 Jun 2025 19:42:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EFACC4CEE3;
 Tue, 24 Jun 2025 19:42:39 +0000 (UTC)
Date: Tue, 24 Jun 2025 20:42:37 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vlad URSU <vlad@ursu.me>
Message-ID: <20250624194237.GI1562@horms.kernel.org>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750794161;
 bh=3lct2tXBhg0hauj12oOI+SFqS8LdvmA8WthvJzKPRso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P1wXUiJwFsgWiK18mURpjC5zrhYGFVh/Zp3epeiskMHVCNhcA88tQgmevNjsqOp6s
 eNEoPcO1uYdQx0BENdHhS7YEr7LBXQkvMcJ41mgF8FMwsYzOPApQ37SM6dWDywGIz/
 crWwbhMzpT4q6F9A5OLBmri8XebkHb6LjQ+tV1Pe/exaQfzcRGctDcTHueDO8rz/YV
 hBzpGhDq8ICq5GzwjjWZOw9Zyzm/21nrqU3hMDSYdjfX7BTVU9h8NvUpJuNSpw+8i8
 Ran+zMtyNo7mh/x4+56rUjaRno/912cy7uidRUMrmDC1vzhO2crrLVl1zBAhl3BpgX
 +5uAkjkCEyxig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=P1wXUiJw
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On Tue, Jun 24, 2025 at 09:14:40PM +0200, Jacek Kowalski wrote:
> As described by Vitaly Lifshits:
> 
> > Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
> > driver cannot perform checksum validation and correction. This means
> > that all NVM images must leave the factory with correct checksum and
> > checksum valid bit set.
> 
> Unfortunately some systems have left the factory with an empty checksum.
> NVM is not modifiable on this platform, hence ignore checksum 0xFFFF on
> Tiger Lake systems to work around this.

I think that you need to update the patch description.
As of v3 it's the last word of the checksum that is being checked,
not the entire checksum.

> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Tested-by: Vlad URSU <vlad@ursu.me>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
> Cc: stable@vger.kernel.org
> ---
> v2: new check to fix yet another checksum issue
> v2 -> v3: fix variable bein compared, drop u16 cast
>  drivers/net/ethernet/intel/e1000e/defines.h | 3 +++
>  drivers/net/ethernet/intel/e1000e/nvm.c     | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index 8294a7c4f122..2dcf46080533 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -638,6 +638,9 @@
>  /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
>  #define NVM_SUM                    0xBABA
>  
> +/* Factory-default checksum value */
> +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF

Perhaps it is too long, but I liked Vlad's suggestion of
naming this NVM_CHECKSUM_WORD_FACTORY_DEFAULT.

> +
>  /* PBA (printed board assembly) number words */
>  #define NVM_PBA_OFFSET_0           8
>  #define NVM_PBA_OFFSET_1           9
> diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
> index e609f4df86f4..56f2434bd00a 100644
> --- a/drivers/net/ethernet/intel/e1000e/nvm.c
> +++ b/drivers/net/ethernet/intel/e1000e/nvm.c
> @@ -558,6 +558,11 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
>  		checksum += nvm_data;
>  	}
>  
> +	if (hw->mac.type == e1000_pch_tgp && nvm_data == NVM_CHECKSUM_FACTORY_DEFAULT) {

Please wrap the line above so it is 80 columns wide or less.

	if (hw->mac.type == e1000_pch_tgp &&
	    nvm_data == NVM_CHECKSUM_FACTORY_DEFAULT) {

> +		e_dbg("Factory-default NVM Checksum on TGP platform - ignoring\n");
> +		return 0;
> +	}
> +
>  	if (checksum != (u16)NVM_SUM) {
>  		e_dbg("NVM Checksum Invalid\n");
>  		return -E1000_ERR_NVM;

-- 
pw-bot: changes-requested
