Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 102B1AC04CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 08:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B319183C44;
	Thu, 22 May 2025 06:47:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uZd7zE5gqdUH; Thu, 22 May 2025 06:47:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98C5483CDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747896476;
	bh=F2Bty2tJkoDjimSwJZS25H2hJB8MsY/0un+2dbiWG2w=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=osNu7ztg/24VxZct+ZnewgTXZINfIL6iK+n4Msf1yycphYREqXJBu5uHUZ876I2QD
	 gQvwx8TYhtZ4n6PB3aqd5WyHhKVqVsjCm56moHOz1wR2GyuH5lx+1BsHrd6wGfBkmG
	 BHdTvalcH1kzVEpncxhVCghiFNpI3qy+p0aO0+YdndPuJcFkuz2Unm7sl2jZhIdt5s
	 tLcZ/8oLafvYJSaANR6m7epMBkucDORqJ5RXsR+G3cc/oLoZVmLCMKHf9FOiuj7e/O
	 qb8N0qluSPSj8qe+7QTHxpylMJbWEZqVpld8At6sHW2Qa6+9o6G4sLFj9NtXF8zRKw
	 dvb2nQiGzeMkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98C5483CDF;
	Thu, 22 May 2025 06:47:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B2E4269
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 06:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFCF681EC0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 06:47:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmRQHefyNm8j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 06:47:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B18D83C89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B18D83C89
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B18D83C89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 06:47:51 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af503.dynamic.kabel-deutschland.de
 [95.90.245.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3594761E64855;
 Thu, 22 May 2025 08:47:31 +0200 (CEST)
Message-ID: <2d18429a-f999-4166-90db-834ea03a6e7a@molgen.mpg.de>
Date: Thu, 22 May 2025 08:47:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
 <20250520110823.1937981-7-karol.kolacinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250520110823.1937981-7-karol.kolacinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: skip completion for
 sideband queue writes
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

Dear Karol,


Thank you for your patch.

Am 20.05.25 um 13:06 schrieb Karol Kolacinski:
> Sideband queue (SBQ) is a HW queue with very short completion time. All
> SBQ writes were posted by default, which means that the driver did not
> have to wait for completion from the neighbor device, because there was
> none. This introduced unnecessary delays, where only those delays were
> "ensuring" that the command is "completed" and this was a potential race
> condition.
> 
> Add the possibility to perform non-posted writes where it's necessary to
> wait for completion, instead of relying on fake completion from the FW,
> where only the delays are guarding the writes.
> 
> Flush the SBQ by reading address 0 from the PHY 0 before issuing SYNC
> command to ensure that writes to all PHYs were completed and skip SBQ
> message completion if it's posted.

How can these delays be analyzed, and verified that these are gone? It’d 
be great if you added that to the commit mesasge.

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c   | 13 ++--
>   drivers/net/ethernet/intel/ice/ice_controlq.c |  4 ++
>   drivers/net/ethernet/intel/ice/ice_controlq.h |  1 +
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 62 +++++++++++--------
>   drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |  5 +-
>   5 files changed, 52 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 11a954e8dc62..53b9b5b54187 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1523,6 +1523,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
>   {
>   	struct ice_sbq_cmd_desc desc = {0};
>   	struct ice_sbq_msg_req msg = {0};
> +	struct ice_sq_cd cd = {};
>   	u16 msg_len;
>   	int status;
>   
> @@ -1535,7 +1536,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
>   	msg.msg_addr_low = cpu_to_le16(in->msg_addr_low);
>   	msg.msg_addr_high = cpu_to_le32(in->msg_addr_high);
>   
> -	if (in->opcode)
> +	if (in->opcode == ice_sbq_msg_wr_p || in->opcode == ice_sbq_msg_wr_np)

For me, it’d be helpful, if the suffixes were `_posted` and `_nonposted`.


Kind regards,

Paul


>   		msg.data = cpu_to_le32(in->data);
>   	else
>   		/* data read comes back in completion, so shorten the struct by
> @@ -1543,10 +1544,12 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
>   		 */
>   		msg_len -= sizeof(msg.data);
>   
> +	cd.postpone = in->opcode == ice_sbq_msg_wr_p;
> +
>   	desc.flags = cpu_to_le16(flags);
>   	desc.opcode = cpu_to_le16(ice_sbq_opc_neigh_dev_req);
>   	desc.param0.cmd_len = cpu_to_le16(msg_len);
> -	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
> +	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
>   	if (!status && !in->opcode)
>   		in->data = le32_to_cpu
>   			(((struct ice_sbq_msg_cmpl *)&msg)->data);
> @@ -6260,7 +6263,7 @@ int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
>   	struct ice_sbq_msg_input cgu_msg = {
>   		.opcode = ice_sbq_msg_rd,
>   		.dest_dev = ice_sbq_dev_cgu,
> -		.msg_addr_low = addr
> +		.msg_addr_low = addr,
>   	};
>   	int err;
>   
> @@ -6290,10 +6293,10 @@ int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
>   int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val)
>   {
>   	struct ice_sbq_msg_input cgu_msg = {
> -		.opcode = ice_sbq_msg_wr,
> +		.opcode = ice_sbq_msg_wr_np,
>   		.dest_dev = ice_sbq_dev_cgu,
>   		.msg_addr_low = addr,
> -		.data = val
> +		.data = val,
>   	};
>   	int err;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
> index dcb837cadd18..5fb3a8441beb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
> @@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
>   	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
>   	ice_flush(hw);
>   
> +	/* If the message is posted, don't wait for completion. */
> +	if (cd && cd->postpone)
> +		goto sq_send_command_error;
> +
>   	/* Wait for the command to complete. If it finishes within the
>   	 * timeout, copy the descriptor back to temp.
>   	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
> index 788040dd662e..7c98d3a0314e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.h
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
> @@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
>   /* sq transaction details */
>   struct ice_sq_cd {
>   	struct libie_aq_desc *wb_desc;
> +	u8 postpone : 1;
>   };
>   
>   /* rq event information */
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 523f95271f35..9a4ecf1249ee 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -352,6 +352,13 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
>   static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
>   {
>   	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
> +	struct ice_sbq_msg_input msg = {
> +		.dest_dev = ice_sbq_dev_phy_0,
> +		.opcode = ice_sbq_msg_rd,
> +	};
> +
> +	/* Flush SBQ by reading address 0 on PHY 0 */
> +	ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   
>   	if (!ice_is_primary(hw))
>   		hw = ice_get_primary_hw(pf);
> @@ -417,10 +424,10 @@ static int ice_write_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 val)
>   {
>   	struct ice_sbq_msg_input msg = {
>   		.dest_dev = ice_ptp_get_dest_dev_e825(hw, port),
> -		.opcode = ice_sbq_msg_wr,
> +		.opcode = ice_sbq_msg_wr_p,
>   		.msg_addr_low = lower_16_bits(addr),
>   		.msg_addr_high = upper_16_bits(addr),
> -		.data = val
> +		.data = val,
>   	};
>   	int err;
>   
> @@ -2342,11 +2349,12 @@ static bool ice_is_40b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
>   static int
>   ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
>   {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.opcode = ice_sbq_msg_rd,
> +	};
>   	int err;
>   
>   	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
> -	msg.opcode = ice_sbq_msg_rd;
>   
>   	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   	if (err) {
> @@ -2419,12 +2427,13 @@ ice_read_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
>   static int
>   ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
>   {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.opcode = ice_sbq_msg_wr_p,
> +		.data = val,
> +	};
>   	int err;
>   
>   	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
> -	msg.opcode = ice_sbq_msg_wr;
> -	msg.data = val;
>   
>   	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   	if (err) {
> @@ -2578,15 +2587,15 @@ static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
>   int
>   ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
>   {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.opcode = ice_sbq_msg_rd,
> +	};
>   	int err;
>   
>   	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
>   	if (err)
>   		return err;
>   
> -	msg.opcode = ice_sbq_msg_rd;
> -
>   	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   	if (err) {
>   		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
> @@ -2612,16 +2621,16 @@ ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
>   int
>   ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
>   {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.opcode = ice_sbq_msg_wr_p,
> +		.data = val,
> +	};
>   	int err;
>   
>   	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
>   	if (err)
>   		return err;
>   
> -	msg.opcode = ice_sbq_msg_wr;
> -	msg.data = val;
> -
>   	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   	if (err) {
>   		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
> @@ -4259,13 +4268,14 @@ static void ice_ptp_init_phy_e82x(struct ice_ptp_hw *ptp)
>    */
>   static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
>   {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.dest_dev = ice_sbq_dev_phy_0,
> +		.opcode = ice_sbq_msg_rd,
> +		.msg_addr_low = lower_16_bits(addr),
> +		.msg_addr_high = upper_16_bits(addr),
> +	};
>   	int err;
>   
> -	msg.msg_addr_low = lower_16_bits(addr);
> -	msg.msg_addr_high = upper_16_bits(addr);
> -	msg.opcode = ice_sbq_msg_rd;
> -	msg.dest_dev = ice_sbq_dev_phy_0;
>   
>   	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   	if (err) {
> @@ -4289,15 +4299,15 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
>    */
>   static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
>   {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.dest_dev = ice_sbq_dev_phy_0,
> +		.opcode = ice_sbq_msg_wr_p,
> +		.msg_addr_low = lower_16_bits(addr),
> +		.msg_addr_high = upper_16_bits(addr),
> +		.data = val,
> +	};
>   	int err;
>   
> -	msg.msg_addr_low = lower_16_bits(addr);
> -	msg.msg_addr_high = upper_16_bits(addr);
> -	msg.opcode = ice_sbq_msg_wr;
> -	msg.dest_dev = ice_sbq_dev_phy_0;
> -	msg.data = val;
> -
>   	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
>   	if (err) {
>   		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
> diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> index 183dd5457d6a..7960f888a655 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> @@ -53,8 +53,9 @@ enum ice_sbq_dev_id {
>   };
>   
>   enum ice_sbq_msg_opcode {
> -	ice_sbq_msg_rd	= 0x00,
> -	ice_sbq_msg_wr	= 0x01
> +	ice_sbq_msg_rd		= 0x00,
> +	ice_sbq_msg_wr_p	= 0x01,
> +	ice_sbq_msg_wr_np	= 0x02,
>   };
>   
>   #define ICE_SBQ_MSG_FLAGS	0x40

