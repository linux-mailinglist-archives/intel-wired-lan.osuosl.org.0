Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLB5FwievWmW/gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:20:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C632DFD8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F309561BE3;
	Fri, 20 Mar 2026 19:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pKDrte6V8GIj; Fri, 20 Mar 2026 19:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A5D061BE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774034437;
	bh=YTMrRPQOylo3Zjnk+dXmlKhaGMxma+GmsmmgaaQD8gg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mzvQwE63Cv5h+VfLKu24Kx5IHYPXej3YpSFN8fDqAHiLebFa6loaBOgdrz/xvcbXk
	 HdzwrRENF3tjvFEp9HxfkMHA42GOs+ILWTkvSBClimzEN1eoWXB+nIseHzVFxhe2L6
	 zKr8h/5B3HOJRgveutgtFraDvI+6UpvQysVdqUx2bQDFyxWOqZBwBexU2FedbX7+UD
	 fIyHm+JvZsv7mjjYvOwdhTjtDXWNntqr6dWxZwUl6Da2NsG8JEw0xWfqYPIBDif59l
	 dmC3fIZ8IAv4pVvyeah59WNu5pZcUNIpiU/V8pXQ62+sXUnXs4Q28xZx40LvUcDioe
	 JXdO2gQsoENyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A5D061BE1;
	Fri, 20 Mar 2026 19:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 322B125C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23A3861BE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:20:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P0ky5NRbtNca for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:20:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 41D6060AEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41D6060AEF
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41D6060AEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:20:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C9C6160126;
 Fri, 20 Mar 2026 19:20:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 313B4C4CEF7;
 Fri, 20 Mar 2026 19:20:31 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 paul.greenwalt@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
Date: Fri, 20 Mar 2026 19:19:04 +0000
Message-ID: <20260320191903.161126-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320050552.422715-1-aleksandr.loktionov@intel.com>
References: <20260320050552.422715-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774034432;
 bh=OhEVl68IJXW23s3giI06+FZaV7LwoTDtzK/9RZFAhsE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ti0NtSVDUyLBzfZ+62YK5zqAfPsUiJgWDPmFm6Bh3YGi4F55eWMokv+C4kcoIGY87
 M3GCy5VgEVaGwYwScNb0F0N4Sx6H0GQJ44aCfgwAo/aWbjYGkgq32z4gjm+f6/DG4+
 cP7gykXyWr7VPiKXyBor0vCrUBsgGEPsCNsnqsQnn89xIoUhsRAy+AUAB8pb+uzCNd
 JuXSV81Kevn5NnyWgH434bbVgNllO0OwT8oyZUi6pgpbVF+uuAOK0Fov60PRmvHY/D
 /M3iRZaryh3FIYmVD4IJvpV+grZoYyK+U5d5LShNB7soT9cjlkQhVXURLOqEramwgZ
 1oQGfRpISOkzQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ti0NtSVD
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: update
 ice_link_mode_str_high() with 200G
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:paul.greenwalt@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 62C632DFD8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: update ice_link_mode_str_high() with 200G

This patch adds string entries to ice_link_mode_str_high[] for 200G and
400GBASE-FR8 PHY types to fix ice_dump_phy_type() debug output for E825C
hardware.

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d0..7cdd6a043d86 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -84,6 +84,17 @@ static const char * const ice_link_mode_str_high[] = {
>  	[2] = "100G_CAUI2",
>  	[3] = "100G_AUI2_AOC_ACC",
>  	[4] = "100G_AUI2",
> +	[5] = "200G_CR4_PAM4",
> +	[6] = "200G_SR4",
> +	[7] = "200G_FR4",
> +	[8] = "200G_LR4",
> +	[9] = "200G_DR4",
> +	[10] = "200G_KR4_PAM4",
> +	[11] = "200G_AUI4_AOC_ACC",
> +	[12] = "200G_AUI4",
> +	[13] = "200G_AUI8_AOC_ACC",
> +	[14] = "200G_AUI8",
> +	[15] = "400GBASE_FR8",
>  };
>
>  /**

Are entries [13], [14], and [15] missing their corresponding hardware
definitions?

The patch adds strings for indices 13-15, but ICE_PHY_TYPE_HIGH_MAX_INDEX
remains defined as 12 in ice_adminq_cmd.h (line 1047), and no
ICE_PHY_TYPE_HIGH_* bit definitions exist for these three types.

Other driver code uses MAX_INDEX as a bound:

drivers/net/ethernet/intel/ice/ice_common.c:ice_get_phy_type_high() {
    for (index = 0; index <= ICE_PHY_TYPE_HIGH_MAX_INDEX; index++)
        ...
}

This creates an inconsistency where ice_dump_phy_type() can print these
strings via debug output, but code checking PHY types based on MAX_INDEX
will not recognize indices 13-15.

If E825C hardware truly supports these PHY types, should this patch also
include the hardware definitions (ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC =
BIT_ULL(13), etc.) and update MAX_INDEX to 15?
