Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22547B7E4D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:46:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 957026110C;
	Wed, 17 Sep 2025 12:46:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2SulGQUEg5WT; Wed, 17 Sep 2025 12:46:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B346610AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758113182;
	bh=+7YTHM7IABSB9UgBPwZC6apEHz+b0858faUa74/noLw=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uRY5RcwW8e3SentnAHOBCEDrcwbazI2Vyxyj0sIFdeF/jJFs0PzvF+VRtfqlm3Kzo
	 gLWrfsJVueV99sIz0ghK1Qvg/ZDEeKZrK8cD+fXinh6RUpaM9+4cqCQ4a4p+KCUrkj
	 H0NzcUSH1L7ztlrOQfDrmv9b8GMuOFwcj0h9zAe45NKTUFW4T3Tm2oaBKu7ZeYYNhh
	 0II8meqDLuXYKfU120rZaHeHlab0cFgMEKqtT1e56iM3TpDdT4fwQO51viHGX8lPRq
	 Or3V6/dmNi6hySZy+mB9C1Idrhib9Xj6SXBcYAUJ70FAAimqDQQ90XMQM6kPXujjHd
	 QNI03VKPNK7zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B346610AF;
	Wed, 17 Sep 2025 12:46:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DE35279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 12:46:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2412A40593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 12:46:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ETduU9GdGNe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 12:46:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3222540106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3222540106
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3222540106
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 12:46:17 +0000 (UTC)
Received: from [192.168.2.205] (p5b13a163.dip0.t-ipconnect.de [91.19.161.99])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4C3F76028F34A;
 Wed, 17 Sep 2025 14:45:48 +0200 (CEST)
Message-ID: <f80effb4-0c91-416f-a7cb-4c9a7055fa13@molgen.mpg.de>
Date: Wed, 17 Sep 2025 14:45:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-1-ec198614c738@intel.com>
Content-Language: en-US
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>,
 Simon Horman <horms@kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-1-ec198614c738@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/5] net: docs: add
 missing features that can have stats
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

Dear Jacob, dear Jesse,


Thank you for your patch.

Am 16.09.25 um 21:14 schrieb Jacob Keller:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> While trying to figure out ethtool -I | --include-statistics, I noticed
> some docs got missed when implementing commit 0e9c127729be ("ethtool:
> add interface to read Tx hardware timestamping statistics").
> 
> Fix up the docs to match the kernel code, and while there, sort them in
> alphabetical order.

So, ETHTOOL_MSG_LINKSTATE_GET and ETHTOOL_MSG_TSINFO_GET were missing.

> Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   Documentation/networking/statistics.rst | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/networking/statistics.rst b/Documentation/networking/statistics.rst
> index 518284e287b0..66b0ef941457 100644
> --- a/Documentation/networking/statistics.rst
> +++ b/Documentation/networking/statistics.rst
> @@ -184,9 +184,11 @@ Protocol-related statistics can be requested in get commands by setting
>   the `ETHTOOL_FLAG_STATS` flag in `ETHTOOL_A_HEADER_FLAGS`. Currently
>   statistics are supported in the following commands:
>   
> -  - `ETHTOOL_MSG_PAUSE_GET`
>     - `ETHTOOL_MSG_FEC_GET`
> +  - `ETHTOOL_MSG_LINKSTATE_GET`
>     - `ETHTOOL_MSG_MM_GET`
> +  - `ETHTOOL_MSG_PAUSE_GET`
> +  - `ETHTOOL_MSG_TSINFO_GET`
>   
>   debugfs
>   -------
> 

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul

