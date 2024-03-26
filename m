Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED79B88C436
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 14:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1AAD407D2;
	Tue, 26 Mar 2024 13:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kbnAICS4fX41; Tue, 26 Mar 2024 13:58:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF32B40518
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711461531;
	bh=gtMvtz78y5A7U41wIijsmFrCLu2HZQU+4X9TxA8+9RU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gS9l9vT7qGUIB6S+oSLu1zpKkTj/prCApm0PV/E8uJpuDAtqVaD/5Qf0PN8uPfyZ9
	 eeC6O8OiewtBAQ6w9kfL9r7ShbDkrB1EnU7LI4NVUj9JtqRIXJh4PhSB3oD+euc/63
	 cDLAvfmv4m6fWrID/u8YDVvQILhPKc3TWeMQDZhQ2CgBZwI9HNgzDzXwrcKiKNIEXT
	 au8FyLVmcBWqkL4W1BbdzzqROwb3L/BsxttaZF2k+ERH0z5DjfnarRvvRnvnEs6txu
	 FEJUT9RjHw1flm5NrD+UP5oepnOOFbVwXoCm9TEIzkWNNoCWMIYgwVpMbhFOIR33U0
	 bek94NAn13m5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF32B40518;
	Tue, 26 Mar 2024 13:58:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A98791BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 13:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94F496082F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 13:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GTZcznFTL9Ja for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 13:58:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 94F5660820
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94F5660820
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94F5660820
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 13:58:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 631B6CE2149;
 Tue, 26 Mar 2024 13:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ADC5C43390;
 Tue, 26 Mar 2024 13:58:41 +0000 (UTC)
Date: Tue, 26 Mar 2024 13:58:39 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20240326135839.GT403975@kernel.org>
References: <20240306163054.90627-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240306163054.90627-1-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711461522;
 bh=yyvQj/ggAgR1YIAGtJLB7gWLu8PfGZ8S8ihCiRxRCDc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qONJxGIKoqdANIfaF45NfOkCbBD5RprNgBtS8CY61/LYuwKyOXfxU+heOLL2sLONi
 6VMcOoRDMc64pu+wBLO4cJbqBxv/cts4I3DIVECaOrtWBplykcVElp+dorxKAsaXEu
 KG002JgzQKoJHxXZvPAXrwSFMmoffQEgM0ImPsVfANTnq/J5nZmhOLgPH1lTDpjF6L
 ZpnYRjIp9x6uSbrh24M8Cta5Sp4aDiLNb2ZDJrOli4vT1NS9l5lw8/1hTutwI+LXba
 xo9VpalqbzgJOPPUg32xfs41hkguHzxcyR4x6iSck/vAfhsC+6XOl4drhcCPnurdvl
 5KyLdf8byP+Cg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qONJxGIK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: avoid forward
 declarations in i40e_nvm.c
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
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 06, 2024 at 05:30:54PM +0100, Maciej Fijalkowski wrote:
> Move code around to get rid of forward declarations. No functional
> changes.
> 
> After a plain code juggling, checkpatch reported:
> total: 0 errors, 7 warnings, 12 checks, 1581 lines checked
> 
> so while at it let's address old issues as well. Should we ever address
> the remaining unnecessary forward declarations within
> drivers/net/ethernet/intel/, consider this change as a starting
> point/reference.
> 
> As reported in [0], there would be a lot more of work to do...if we
> care.
> 
> [0]: https://lore.kernel.org/intel-wired-lan/Zeh8qadiTGf413YU@boxer/T/#u
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c | 1050 ++++++++++----------
>  1 file changed, 509 insertions(+), 541 deletions(-)

Thanks Maciej,

FWIIW, it might have been easier to review if this had been broken up.
But I appreciate that is a lot more work, and perhaps it wouldn't
have been easier to review anyway.

In any case, I did find time to work through this and I agree that
the patch matches it's description. And is a positive step IMHO.

Reviewed-by: Simon Horman <horms@kernel.org>
