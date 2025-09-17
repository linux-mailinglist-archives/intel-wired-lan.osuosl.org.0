Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D28AB7E62D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:48:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EE1761452;
	Wed, 17 Sep 2025 06:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oB-yNBdLecHa; Wed, 17 Sep 2025 06:50:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3E0061455
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758091831;
	bh=U2KZAcZYRpJbw/T4HyQJWbmYUEIFQftXAh6X9d+R6JY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8/GqowdI8yOTsSnWas+J2mjAkREV6PeISNegLAyC9fyJyZX8dqsC8wldq4hwBmqqS
	 fr7bGh8rL2EV0dsVDURs87VdUC4v3t32Oz7Hl085RrIiVMzdFvPe11Pnw2YvO3BoKe
	 d4NZs055cEwctJ4bJkK1/M71azZZ2Rkt3UezI/G+/RhRpX2We2sNmHg/svws69NQvY
	 j4oP2F23Gf+CnPyafZVZcPbjfLsOhVaAMyw2qRYJAwcq/MuKhClU6QtizpidGX+FWG
	 jFZpr0xUw6r2SCB/Z8nXsgsNiLGvGusnzbVYaBjpMfpnghS8e+/UQGaHfR3i3jXU5d
	 hB0UfZsSwAK2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3E0061455;
	Wed, 17 Sep 2025 06:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 91C46279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 06:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 839CF6144F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 06:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JgCilaScS9db for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 06:50:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1ADB56144A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ADB56144A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1ADB56144A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 06:50:27 +0000 (UTC)
Received: from [192.168.2.205] (p5dc55721.dip0.t-ipconnect.de [93.197.87.33])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 58A2F60213C82;
 Wed, 17 Sep 2025 08:49:47 +0200 (CEST)
Message-ID: <329bdb90-578b-4fba-97fd-7000baa281e6@molgen.mpg.de>
Date: Wed, 17 Sep 2025 08:49:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250916-jk-fix-missing-underscore-v1-1-a64be25ec2ac@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250916-jk-fix-missing-underscore-v1-1-a64be25ec2ac@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] libie: fix string names for
 AQ error codes
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

Dear Jacob,


Thank you for your patch.

Am 16.09.25 um 22:09 schrieb Jacob Keller:
> The LIBIE_AQ_STR macro() introduced by commit 5feaa7a07b85 ("libie: add
> adminq helper for converting err to str") is used in order to generate
> strings for printing human readable error codes. Its definition is missing
> the separating underscore ('_') character which makes the resulting strings
> difficult to read. Additionally, the string won't match the source code,
> preventing search tools from working properly.
> 
> Add the missing underscore character, fixing the error string names.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Fixes: 5feaa7a07b85 ("libie: add adminq helper for converting err to str")
> ---
> I found this recently while reviewing the libie code. I believe this
> warrants a net fix because it is both simple, and because users may attempt
> to pass printed error codes into search tools like grep, and will be unable
> to locate the error values without manually adding the missing '_'.

As always, great commit message! Thank you.

> ---
>   drivers/net/ethernet/intel/libie/adminq.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/libie/adminq.c b/drivers/net/ethernet/intel/libie/adminq.c
> index 55356548e3f0..7b4ff479e7e5 100644
> --- a/drivers/net/ethernet/intel/libie/adminq.c
> +++ b/drivers/net/ethernet/intel/libie/adminq.c
> @@ -6,7 +6,7 @@
>   
>   static const char * const libie_aq_str_arr[] = {
>   #define LIBIE_AQ_STR(x)					\
> -	[LIBIE_AQ_RC_##x]	= "LIBIE_AQ_RC" #x
> +	[LIBIE_AQ_RC_##x]	= "LIBIE_AQ_RC_" #x
>   	LIBIE_AQ_STR(OK),
>   	LIBIE_AQ_STR(EPERM),
>   	LIBIE_AQ_STR(ENOENT),

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
