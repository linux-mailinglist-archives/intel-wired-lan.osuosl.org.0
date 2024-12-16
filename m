Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 160209F3884
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 19:13:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B903E40664;
	Mon, 16 Dec 2024 18:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0IbfdYsNi5yN; Mon, 16 Dec 2024 18:13:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 777EF404D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734372829;
	bh=eKosbrGAKaQf5wL58+32oIlGngsxMjL01ZKFwtIXOgQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WRjSCvg2JgZ+x5Ui+TiRpxuZ3kQq+c+KAu0VWUEra3n5mS5azXf/FAim/CU2v4a4N
	 +U5Ze8jvgWN5TAtcugmnx02zQwf9jiWbBN62eZdEphOVVq6TgajzBb2mVsHSRXdSnx
	 zMl/+NdXH++QYwM1OR2Q+HLIfVDbGjJuoAVZAvpf/2PQtq4TdHmozRBjMTPOsXJumE
	 cBe9HFYLB0kVYxZKKV8UzIn1QgKbcta85JARb8DUe8KyVy8EIqp+8+I+M/3WOJpckO
	 fHkn+2KWUT5FNWl8YhFtT4fU4DPa4fO3tZ+cYOa/GIG9dOIO0GEhUZNtv2FKh0i4VN
	 5BGdj323f5OMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 777EF404D6;
	Mon, 16 Dec 2024 18:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B1B67C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 18:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 919D2608CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 18:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvdIZ0Ki1-hN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 18:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10B726089B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10B726089B
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10B726089B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 18:13:44 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-436230de7a3so4959725e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 10:13:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734372823; x=1734977623;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eKosbrGAKaQf5wL58+32oIlGngsxMjL01ZKFwtIXOgQ=;
 b=BMusivmvn6YBiflrzsI0uPoHL0fVv1XHuMiQDKG0w2OF60rggdufuNWHbbpir1mbFH
 EgifVIQCea0hqyds3c/p0YTBms3YclGIFRTjwdTCbEmH/mQQ14XXgKBYgmw2fLB1Q6dJ
 KXtH5GSTzs0V3fJN8dGCO19Rg03r8Y+ehxRPvnpc4kk+77pyDo38y29ok9oeESKbZ3SW
 rKJNZ1VaQi+2WJNp/p0N/J9/A0xP3aJog4HZMhCwET4HFiELcIvOKUq19+XXzTb9iqnt
 w69iQlxFuCm1gJlUNiPUpgxmWOOKfcqw8nxdsW4Z56jHgYxKu6oHD1CG9fXcAuRupaAK
 u7Sw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWvw2hut+ZhNCmLjWSZbEibdGvJKMt3bk36SSO/09P8jB164hECR6tzI+vsbNOBo7GxVVuoz18f8HDgG2E1r7s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwyD3OnacyxS9gMhU+iXPxXXt+HJEX4qU+GtD0gdgjLpX68gGf+
 OdjrsjroXssgrxJiZ9eEG/va8mAC2aOTOGaRehrtSSFh/IS9F51L
X-Gm-Gg: ASbGncuEvhmJq3Eb5hxN6+Agsu5a0PG9qYIGjZX9P6qgf8CRL5owvqJngUdG+qKuONd
 sp0Re1T4ymORjOwRCKVibb4zqxW/fihLfc5N+jXzVPHvqu3zht0hqZhLUloKJOFBW8aUBIrCBcs
 3raS8z/aCwMBXulfB+LIXcagvnOIAFIGovWWpiJiA+rPesgT0jGDRu6VMKQOmiP1Lhadhuo4CMM
 dLGCwhSHReVSZDlJYArgo9jPz4MUbX3gvxHo19mnxnP
X-Google-Smtp-Source: AGHT+IHjkKdWKxbJS3rOEPYm4fJp4TvPgsg3dhDscLnCl4WBKJ2SfbzqiGNWjCGQ4jbqAIrGKfMCng==
X-Received: by 2002:a05:600c:3c89:b0:430:52ec:1e2a with SMTP id
 5b1f17b1804b1-4362aaac597mr46319645e9.7.1734372822562; 
 Mon, 16 Dec 2024 10:13:42 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4363601739asm91602395e9.8.2024.12.16.10.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 10:13:41 -0800 (PST)
Date: Mon, 16 Dec 2024 20:13:39 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241216181339.zcnnqna2nc73sdgh@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734372823; x=1734977623; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=eKosbrGAKaQf5wL58+32oIlGngsxMjL01ZKFwtIXOgQ=;
 b=JHrHkA34YUJeba25rPkgiHUqa30v/nIeZ2Lc+wgvB4JbFnOIMxO6E+yq/Y6yxHjt8s
 1s5XonkFqdliY1bHOKYYyz78QVkC8CA4F1KSer4EA4myEYMQE//XuUQUAqMqSVUFlkPX
 G5XLbGAgAKcnHqh0lGWzl7au/9F0LfKscromEwv49JXZspWwHZC6JCYfCyXru5wPzhVU
 fij+/IuPAw5DJ3eaImssDxAu18h8mtUpz+R0NxSn1ILRhpTBuQ7q6Wi+CrgRXJvC7zV7
 gxGt7sKpUmqea4XbQxu/eUrtzX9pEJW7PJz5ddz5Jnup30MAXqyioWgF9Bu+Ixyq1YLX
 xFNA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=JHrHkA34
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/9] igc: Add support to set
 MAC Merge data via ethtool
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

On Mon, Dec 16, 2024 at 01:47:16AM -0500, Faizal Rahim wrote:
> Created fpe_t struct to store MAC Merge data and implement the
> "ethtool --set-mm" callback. The fpe_t struct will host other frame
> preemption related data in future patches.
> 
> The following fields are used to set IGC register:
> a) pmac_enabled -> TQAVCTRL.PREEMPT_ENA
>    This global register sets the preemption scheme, controlling
>    preemption capabilities in transmit and receive directions, as well as
>    the verification handshake capability.

I'm sorry, I'm not able to mentally translate this explanation into
something technical. Which capabilities are we talking about, that this
bit controls? I'm not clear what it does. The kernel-doc description of
pmac_enabled is much more succinct (and at the same time, appears to
contradict this much more elaborate yet unclear description).

> b) tx_min_frag_size -> TQAVCTRL.MIN_FRAG
>    Global register to set minimum fragments.

When you say "global register", you mean global as opposed to what?
Per station interface?

> The fields below don't set any register but will be utilized in the
> upcoming patches:
> a) verify_time
> b) verify_enabled
> c) tx_enabled
>    Note that IGC doesn't have any register to enforce "tx_enabled"
>    (preemption in transmit direction) like some other NIC. This field
>    will be used in driver level to control verification procedure and
>    managing preemption capability in transmit direction.

This is perfectly ok, tx_enabled can be a software setting. At the end
of the day, it's important for
	tx_active == tx_enabled && (!verify_enabled || verify_success)
to dictate the FPE state of the hardware in the TX direction.

> 
> At this point, verify response handshake is not enabled yet.
> 
> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         | 24 ++++++++++++-
>  drivers/net/ethernet/intel/igc/igc_defines.h |  3 ++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 30 ++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |  2 ++
>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 37 ++++++++++++++++++--
>  drivers/net/ethernet/intel/igc/igc_tsn.h     |  9 +++++
>  6 files changed, 102 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 480b54573d60..5a14e9101723 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -40,6 +40,25 @@ void igc_ethtool_set_ops(struct net_device *);
>  
>  #define IGC_MAX_TX_TSTAMP_REGS		4
>  
> +/**
> + * @verify_time: see struct ethtool_mm_state
> + * @verify_enabled: see struct ethtool_mm_state
> + * @tx_enabled:
> + * Note that IGC NIC does not have the capability to enable preemption in
> + * "transmit direction". This field is used to manage transmit preemption in
> + * driver level.
> + * @pmac_enabled:
> + * Enable the capability to receive preemptible frames.
> + * @tx_min_frag_size: see struct ethtool_mm_state
> + */
> +struct fpe_t {
> +	u32 verify_time;
> +	bool verify_enabled;
> +	bool tx_enabled;
> +	bool pmac_enabled;
> +	u32 tx_min_frag_size;
> +};
> +
>  enum igc_mac_filter_type {
>  	IGC_MAC_FILTER_TYPE_DST = 0,
>  	IGC_MAC_FILTER_TYPE_SRC
> @@ -332,6 +351,8 @@ struct igc_adapter {
>  		struct timespec64 period;
>  	} perout[IGC_N_PEROUT];
>  
> +	struct fpe_t fpe;
> +
>  	/* LEDs */
>  	struct mutex led_mutex;
>  	struct igc_led_classdev *leds;
> @@ -387,10 +408,11 @@ extern char igc_driver_name[];
>  #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
>  #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
>  #define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
> +#define IGC_FLAG_TSN_PREEMPT_ENABLED	BIT(20)
>  
>  #define IGC_FLAG_TSN_ANY_ENABLED				\
>  	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
> -	 IGC_FLAG_TSN_LEGACY_ENABLED)
> +	 IGC_FLAG_TSN_LEGACY_ENABLED | IGC_FLAG_TSN_PREEMPT_ENABLED)
>  
>  #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>  #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 3a78753ab050..3088cdd08f35 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -544,6 +544,9 @@
>  #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
>  #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
>  #define IGC_TQAVCTRL_FUTSCDDIS		0x00000080
> +#define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
> +#define IGC_TQAVCTRL_MIN_FRAG_MASK	0x0000C000
> +#define IGC_TQAVCTRL_MIN_FRAG_SHIFT	14

Shouldn't these fields be in a particular order? like 0x00000002 should
come after 0x00000001?

>  
>  #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
>  #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 817838677817..1954561ec4aa 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -8,6 +8,7 @@
>  
>  #include "igc.h"
>  #include "igc_diag.h"
> +#include "igc_tsn.h"
>  
>  /* forward declaration */
>  struct igc_stats {
> @@ -1781,6 +1782,34 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
>  	return 0;
>  }
>  
> +static int igc_ethtool_set_mm(struct net_device *netdev,
> +			      struct ethtool_mm_cfg *cmd,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct fpe_t *fpe = &adapter->fpe;
> +
> +	if (cmd->tx_min_frag_size < IGC_TX_MIN_FRAG_SIZE ||
> +	    cmd->tx_min_frag_size > IGC_TX_MAX_FRAG_SIZE)
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Invalid value for tx-min-frag-size");

Shouldn't the execution actually stop here with an error code?

> +	else
> +		fpe->tx_min_frag_size = cmd->tx_min_frag_size;
> +
> +	if (cmd->verify_time < MIN_VERIFY_TIME ||
> +	    cmd->verify_time > MAX_VERIFY_TIME)
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Invalid value for verify-time");

And here too?

> +	else
> +		fpe->verify_time = cmd->verify_time;
> +
> +	fpe->tx_enabled = cmd->tx_enabled;
> +	fpe->pmac_enabled = cmd->pmac_enabled;
> +	fpe->verify_enabled = cmd->verify_enabled;
> +
> +	return igc_tsn_offload_apply(adapter);

hmm, igc_tsn_offload_apply() is a function which always returns zero.
It seems more natural to make it return void.

> +}
> +
>  static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>  					  struct ethtool_link_ksettings *cmd)
>  {
> @@ -2068,6 +2097,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
>  	.set_rxfh		= igc_ethtool_set_rxfh,
>  	.get_ts_info		= igc_ethtool_get_ts_info,
>  	.get_channels		= igc_ethtool_get_channels,
> +	.set_mm			= igc_ethtool_set_mm,
>  	.set_channels		= igc_ethtool_set_channels,
>  	.get_priv_flags		= igc_ethtool_get_priv_flags,
>  	.set_priv_flags		= igc_ethtool_set_priv_flags,
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 3f0751a9530c..b85eaf34d07b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7144,6 +7144,8 @@ static int igc_probe(struct pci_dev *pdev,
>  
>  	igc_tsn_clear_schedule(adapter);
>  
> +	igc_fpe_init(&adapter->fpe);
> +
>  	/* reset the hardware with the new settings */
>  	igc_reset(adapter);
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 5cd54ce435b9..b968c02f5fee 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -5,6 +5,18 @@
>  #include "igc_hw.h"
>  #include "igc_tsn.h"
>  
> +#define DEFAULT_VERIFY_TIME		10
> +#define IGC_MIN_FOR_TX_MIN_FRAG		0
> +#define IGC_MAX_FOR_TX_MIN_FRAG		3
> +
> +void igc_fpe_init(struct fpe_t *fpe)
> +{
> +	fpe->verify_enabled = false;
> +	fpe->verify_time = DEFAULT_VERIFY_TIME;
> +	fpe->pmac_enabled = false;
> +	fpe->tx_min_frag_size = IGC_TX_MIN_FRAG_SIZE;
> +}
> +
>  static bool is_any_launchtime(struct igc_adapter *adapter)
>  {
>  	int i;
> @@ -49,6 +61,9 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>  	if (adapter->strict_priority_enable)
>  		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
>  
> +	if (adapter->fpe.pmac_enabled)
> +		new_flags |= IGC_FLAG_TSN_PREEMPT_ENABLED;
> +
>  	return new_flags;
>  }
>  
> @@ -148,7 +163,8 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
>  
>  	tqavctrl = rd32(IGC_TQAVCTRL);
>  	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
> -		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS);
> +		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS |
> +		      IGC_TQAVCTRL_PREEMPT_ENA | IGC_TQAVCTRL_MIN_FRAG_MASK);
>  
>  	wr32(IGC_TQAVCTRL, tqavctrl);
>  
> @@ -194,12 +210,22 @@ static void igc_tsn_set_retx_qbvfullthreshold(struct igc_adapter *adapter)
>  	wr32(IGC_RETX_CTL, retxctl);
>  }
>  
> +static u8 igc_fpe_get_frag_size_mult(const struct fpe_t *fpe)
> +{
> +	u32 tx_min_frag_size = fpe->tx_min_frag_size;
> +	u8 mult = (tx_min_frag_size / 64) - 1;
> +
> +	return clamp_t(u8, mult, IGC_MIN_FOR_TX_MIN_FRAG,
> +		       IGC_MAX_FOR_TX_MIN_FRAG);
> +}

If you translate the continuous range of TX fragment sizes into
discrete multipliers because that's what the hardware works with, why
don't you just reject the non-multiple values using
ethtool_mm_frag_size_min_to_add(), and at the same time use the output
of that function directly to obtain your multiplier? IIUC it gets you
the same result.

> +
>  static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw = &adapter->hw;
>  	u32 tqavctrl, baset_l, baset_h;
>  	u32 sec, nsec, cycle, rxpbs;
>  	ktime_t base_time, systim;
> +	u32 frag_size_mult;
>  	int i;
>  
>  	wr32(IGC_TSAUXC, 0);
> @@ -370,10 +396,17 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>  		wr32(IGC_TXQCTL(i), txqctl);
>  	}
>  
> -	tqavctrl = rd32(IGC_TQAVCTRL) & ~IGC_TQAVCTRL_FUTSCDDIS;
> +	tqavctrl = rd32(IGC_TQAVCTRL) & ~(IGC_TQAVCTRL_FUTSCDDIS |
> +		   IGC_TQAVCTRL_MIN_FRAG_MASK | IGC_TQAVCTRL_PREEMPT_ENA);
>  
>  	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
>  
> +	if (adapter->fpe.pmac_enabled)
> +		tqavctrl |= IGC_TQAVCTRL_PREEMPT_ENA;
> +
> +	frag_size_mult = igc_fpe_get_frag_size_mult(&adapter->fpe);
> +	tqavctrl |= frag_size_mult << IGC_TQAVCTRL_MIN_FRAG_SHIFT;
> +
>  	adapter->qbv_count++;
>  
>  	cycle = adapter->cycle_time;
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
> index 98ec845a86bf..08e7582f257e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.h
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -4,6 +4,15 @@
>  #ifndef _IGC_TSN_H_
>  #define _IGC_TSN_H_
>  
> +/* IGC_TX_MIN_FRAG_SIZE is based on the MIN_FRAG field in Section 8.12.2 of the
> + * SW User Manual.
> + */
> +#define IGC_TX_MIN_FRAG_SIZE		68
> +#define IGC_TX_MAX_FRAG_SIZE		260

Odd. Is there a link to this manual (for I225 I suppose)? Standard values are 60, 124, 188, 252.
Maybe the methodology for calculating these is used here? As things stand,
if the driver reports these values, IIUC, openlldp gets confused and communicates
a LLDP_8023_ADD_ETH_CAPS_ADD_FRAG_SIZE value to the link partner which is higher
than it could have been (68 is rounded up to the next standard TX fragment size,
which is 124). So the link partner will preempt in larger chunks and this will
not reduce latency as much.

If you run tools/testing/selftests/drivers/net/hw/ethtool_mm.sh, that
should also spot some inconsistencies, since some of the tests run openlldp
on both ends.

> +#define MIN_VERIFY_TIME			1
> +#define MAX_VERIFY_TIME			128
> +
> +void igc_fpe_init(struct fpe_t *fpe);
>  int igc_tsn_offload_apply(struct igc_adapter *adapter);
>  int igc_tsn_reset(struct igc_adapter *adapter);
>  void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
> -- 
> 2.25.1
> 
> 

