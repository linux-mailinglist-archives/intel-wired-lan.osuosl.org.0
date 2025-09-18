Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6923FB85E05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 18:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05CA360628;
	Thu, 18 Sep 2025 16:04:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PPBuolSE5VX; Thu, 18 Sep 2025 16:04:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7861F6062A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758211495;
	bh=gp7rN13ERKddh//jlwjF98+6ZVvtaokihIiBt8Nemjk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JDfhI5XkODmPGVq5B1l3V0fsTAt47JFdUOZWXRNT/FVKYqkvU+Dihu2f03dD5OTKx
	 vM6w7m5v/+vDZ2PgKTAgCrpdg6NN8eF2dJjCtDFHCgbLM+HIPHJWOr4J0dmxlpq8O/
	 iPE+4n6uueos2lkBI+N9sc6DpTEJ6EkwPfJkEy9K0kjrt5iOhlFhiNv6vFs1/0Q75l
	 jku8RP6rU7hVoLB/m0YgA9GitJrq9p1MqP1fOPGScm0x7EkwAn25UbRTgPWKLVZem/
	 eVryfKbO4m+OBzPcZ2A6vLiFSvUqqNNxLKkyGfU3YzplNm1G/p0Zi91TmboDx0kLRu
	 88RzgYkKGRnNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7861F6062A;
	Thu, 18 Sep 2025 16:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B6E21E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 16:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11A0560624
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 16:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id drt3DGGmMtqe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 16:04:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 793F660623
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 793F660623
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 793F660623
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 16:04:50 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0478060213C91;
 Thu, 18 Sep 2025 18:03:28 +0200 (CEST)
Message-ID: <11e02598-3fc8-4350-91b7-5fc587a8cf6b@molgen.mpg.de>
Date: Thu, 18 Sep 2025 18:03:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Avi Shalev <avi.shalev@intel.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250918183811.31270-1-chwee.lin.choong@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
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

Dear Chwee-Lin,


Thank you for your patch.

Am 18.09.25 um 20:38 schrieb Chwee-Lin Choong:
> The current HW bug workaround checks the TXTT_0 ready bit first,
> then reads LOW -> HIGH -> LOW from register 0 to detect if a
> timestamp was captured.
> 
> This sequence has a race: if a new timestamp is latched after
> reading the TXTT mask but before the first LOW read, both old
> and new timestamp match, causing the driver to drop a valid
> timestamp.

Reading the TXTT mask is `rd32(IGC_TSYNCTXCTL)`, correct?

> Fix by reading the LOW register first, then the TXTT mask,
> so a newly latched timestamp will always be detected.
> 
> This fix also prevents TX unit hangs observed under heavy
> timestamping load.

The unit shouldn’t hang, even if valid timestamps are dropped?

Do you have a reproducer?

> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestamps")
> Suggested-by: Avi Shalev <avi.shalev@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index b7b46d863bee..930486b02fc1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -774,10 +774,17 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
>   static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> +	u32 txstmpl_old;
>   	u64 regval;
>   	u32 mask;
>   	int i;
>   
> +	/* Read the "low" register 0 first to establish a baseline value.
> +	 * This avoids a race where a new timestamp could be latched
> +	 * after checking the TXTT mask.
> +	 */
> +	txstmpl_old = rd32(IGC_TXSTMPL);
> +
>   	mask = rd32(IGC_TSYNCTXCTL) & IGC_TSYNCTXCTL_TXTT_ANY;
>   	if (mask & IGC_TSYNCTXCTL_TXTT_0) {
>   		regval = rd32(IGC_TXSTMPL);
> @@ -801,9 +808,8 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>   		 * timestamp was captured, we can read the "high"
>   		 * register again.
>   		 */
> -		u32 txstmpl_old, txstmpl_new;
> +		u32 txstmpl_new;
>   
> -		txstmpl_old = rd32(IGC_TXSTMPL);
>   		rd32(IGC_TXSTMPH);
>   		txstmpl_new = rd32(IGC_TXSTMPL);
>   

Kind regards,

Paul
