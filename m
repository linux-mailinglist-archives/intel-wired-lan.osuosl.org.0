Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CDEA5BE72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 12:04:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B72840B4C;
	Tue, 11 Mar 2025 11:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmTVnY8QMs1j; Tue, 11 Mar 2025 11:04:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56A3040B59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741691068;
	bh=pphwc9HoAAG0yAZzRntnT4mIl10lrttBws2cUgZu6CY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RLEniwRAsNzal1qKwBmq3RsY3An0Ae71SjCIJRzAFf0iGG9aahwGYiyCc1nmEyL0a
	 NkRrHXVTNmwalv1dr8vPbbvTDjqjsQsRmdZA8attqj+g9xd0KCfHeSgrwlJ++3+5iQ
	 n3DL6ZwT170ElCzD8xkt9wrtVPGSqbO+UmTYEEvIDmCcX2tRumGsbvfuxVcuPMj75e
	 bOPmqGM7BZXfkkCnt1F5xtv/ox5758oZ2I65+VMDfDfPk6LjorhGs1BUZIb0jRkIx/
	 kt5THvf9KKfkAkXn6ujIKbFCM7Ai2mY+6mGEPNL79OTkQNb64wcBCtg61yCikWYm2v
	 yuFmXdD1F6Nzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56A3040B59;
	Tue, 11 Mar 2025 11:04:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 981421DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 11:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6193E40AF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 11:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8CbEqJZVD_De for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 11:04:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54CE9400BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54CE9400BD
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54CE9400BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 11:04:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B4A5CA46B26;
 Tue, 11 Mar 2025 10:58:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9378BC4CEE9;
 Tue, 11 Mar 2025 11:04:21 +0000 (UTC)
Date: Tue, 11 Mar 2025 12:04:18 +0100
From: Simon Horman <horms@kernel.org>
To: Kyungwook Boo <bookyungwook@gmail.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250311110418.GK4159220@kernel.org>
References: <e7e4e5d5-931d-4506-9d75-b87783011379@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7e4e5d5-931d-4506-9d75-b87783011379@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741691063;
 bh=/JETuvOyKN6qqzVHVb4ofsOnUtJA9YuFu/oCz0Cz7N0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UmB6XRbU6pqC0YE+WAG8iDLMfJybbgWwoAV+5nDxZR4lLa42bDrLF0j8TQfeto/1t
 csjVFPcHzc5cEeOoGhgqYycQwzCvbFxmwYB/dmWiWxLKH1yI7c7YWG+cW5azDCwWvA
 4p5UzoMr9sJnVfEFvLfk5pUidqzchXZWz1DsmeW5LQGnhifQsURQX7FVO7BPY/0oCL
 sMVVAORXKJrxFpA9iSYgby18xiPTasBFjvGCx6IR5OUc395ds+WOHmej9TqHJDpQIL
 Qc/onh1Phys5JPbtS1lUApmoCjRIsqpqvEXxyWI/B5GuQZyReweGsEP5VYo4deSZ09
 4QhrjmJnNg/fg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UmB6XRbU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: fix MMIO write
 access to an invalid page in i40e_clear_hw
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

On Tue, Mar 11, 2025 at 02:16:02PM +0900, Kyungwook Boo wrote:
> When the device sends a specific input, an integer underflow can occur, leading
> to MMIO write access to an invalid page.
> 
> Prevent the integer underflow by changing the type of related variables.
> 
> Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
> Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com/T/
> ---
> Changes in v2:
> - Formatting properly
> - Fix variable shadowing
> - Link to v1: https://lore.kernel.org/netdev/55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com/
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 370b4bddee44..b11c35e307ca 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -817,10 +817,11 @@ int i40e_pf_reset(struct i40e_hw *hw)
>  void i40e_clear_hw(struct i40e_hw *hw)
>  {
>  	u32 num_queues, base_queue;
> -	u32 num_pf_int;
> -	u32 num_vf_int;
> +	s32 num_pf_int;
> +	s32 num_vf_int;
>  	u32 num_vfs;
> -	u32 i, j;
> +	s32 i;
> +	u32 j;
>  	u32 val;
>  	u32 eol = 0x7ff;
>  
> ---
> base-commit: 4d872d51bc9d7b899c1f61534e3dbde72613f627

I see that this addresses the problem at the first link above.
And I'd happy to see it accepted as-is.

Reviewed-by: Simon Horman <horms@kernel.org>

But, as an aside, wouldn't it be more appropriate to use generic
types like int and unsigned int for most of the above variables?
Perhaps this could be addressed by a follow-up. Or perhaps that
would just be churn, IDK.
