Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1AE99EE9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 16:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC45780DCA;
	Tue, 15 Oct 2024 14:02:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ajt7I3H8njnL; Tue, 15 Oct 2024 14:02:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78D1F80DD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729000972;
	bh=PjBoCtHGn+AojvJG0+ycFhdP11CHoL/kpWCMAwi8vcU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3qKVtPo3sMkQs/LuxJWhHSLndsU0jwfGc+gQyStxyo3zwEWRKo7nZv4W9SdMLli3Y
	 hMTsPiLs7x5td8scxM1zSjSqU8cVWzwXTK7KIwOIJcz8YK/QwhA/vAPS4hDb52GUhk
	 zSSvB10Q2uTIEjSWl2G9SR6vk/HKXqT5BZi3Y8XVqDfhIzyA3aS/ubaWxZANVl9fx7
	 QKP6GGr7RB8ifC/97W6PFRCSqwZgRO+7guKnNIkwL1bOQSYs/uARQJcPkUpM5cimEl
	 qX6K9Y1sFcXBAeFDmm6K5e4rRFx95hgYrrv+tBXTLhgu5QGpZr4ocTA7Fw7SgMfkUl
	 cc9wkeNTZEgTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78D1F80DD1;
	Tue, 15 Oct 2024 14:02:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BD351BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 14:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AA2F80DB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 14:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3YT1k3LAmVma for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 14:02:49 +0000 (UTC)
X-Greylist: delayed 370 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 15 Oct 2024 14:02:48 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15F0C80D8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15F0C80D8B
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b6; helo=out-182.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b6])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15F0C80D8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 14:02:48 +0000 (UTC)
Message-ID: <58b00c7f-b74b-4f14-a8c4-080d3fcedcb1@linux.dev>
Date: Tue, 15 Oct 2024 14:56:28 +0100
MIME-Version: 1.0
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org, aleksander.lobakin@intel.com
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
 <20241013154415.20262-8-mateusz.polchlopek@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20241013154415.20262-8-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1729000594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PjBoCtHGn+AojvJG0+ycFhdP11CHoL/kpWCMAwi8vcU=;
 b=TaSIKGHC7vhEpwRctaE1O8pWI2kba/i5l/L+z8Jw0LINvsPKuAT0d6Vo20oE4MDra/7xc+
 +0nDBCX5F5zA/1kGhpya9STs1eGH8GCHIwsMvCpnBogHgqRXK+Eei9kVjGWUnTC9nC5c7t
 6rFV9/gARTw20lWBtMuuZDxiBCVcC/I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=TaSIKGHC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11 07/14] iavf: add support
 for indirect access to PHC time
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13/10/2024 16:44, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Implement support for reading the PHC time indirectly via the
> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
> 
> Based on some simple tests with ftrace, the latency of the indirect
> clock access appears to be about ~110 microseconds. This is due to the
> cost of preparing a message to send over the virtchnl queue.
> 
> This is expected, due to the increased jitter caused by sending messages
> over virtchnl. It is not easy to control the precise time that the
> message is sent by the VF, or the time that the message is responded to
> by the PF, or the time that the message sent from the PF is received by
> the VF.
> 
> For sending the request, note that many PTP related operations will
> require sending of VIRTCHNL messages. Instead of adding a separate AQ
> flag and storage for each operation, setup a simple queue mechanism for
> queuing up virtchnl messages.
> 
> Each message will be converted to a iavf_ptp_aq_cmd structure which ends
> with a flexible array member. A single AQ flag is added for processing
> messages from this queue. In principle this could be extended to handle
> arbitrary virtchnl messages. For now it is kept to PTP-specific as the
> need is primarily for handling PTP-related commands.
> 
> Use this to implement .gettimex64 using the indirect method via the
> virtchnl command. The response from the PF is processed and stored into
> the cached_phc_time. A wait queue is used to allow the PTP clock gettime
> request to sleep until the message is sent from the PF.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c   |   9 +-
>   drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 147 ++++++++++++++++++
>   drivers/net/ethernet/intel/iavf/iavf_ptp.h    |   1 +
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  93 +++++++++++
>   4 files changed, 249 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index be07e9f8e664..b897dd94a32e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2269,7 +2269,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
>   		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021AD);
>   		return 0;
>   	}
> -
> +	if (adapter->aq_required & IAVF_FLAG_AQ_SEND_PTP_CMD) {
> +		iavf_virtchnl_send_ptp_cmd(adapter);
> +		return IAVF_SUCCESS;
> +	}
>   	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
>   		iavf_request_stats(adapter);
>   		return 0;
> @@ -5496,6 +5499,10 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* Setup the wait queue for indicating virtchannel events */
>   	init_waitqueue_head(&adapter->vc_waitqueue);
>   
> +	INIT_LIST_HEAD(&adapter->ptp.aq_cmds);
> +	init_waitqueue_head(&adapter->ptp.phc_time_waitqueue);
> +	mutex_init(&adapter->ptp.aq_cmd_lock);
> +
>   	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
>   			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
>   	/* Initialization goes on in the work. Do not add more of it below. */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> index 5a1b5f8b87e5..f4f10692020a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -4,6 +4,9 @@
>   #include "iavf.h"
>   #include "iavf_ptp.h"
>   
> +#define iavf_clock_to_adapter(info)				\
> +	container_of_const(info, struct iavf_adapter, ptp.info)
> +
>   /**
>    * iavf_ptp_cap_supported - Check if a PTP capability is supported
>    * @adapter: private adapter structure
> @@ -21,6 +24,138 @@ bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap)
>   	return (adapter->ptp.hw_caps.caps & cap) == cap;
>   }
>   
> +/**
> + * iavf_allocate_ptp_cmd - Allocate a PTP command message structure
> + * @v_opcode: the virtchnl opcode
> + * @msglen: length in bytes of the associated virtchnl structure
> + *
> + * Allocates a PTP command message and pre-fills it with the provided message
> + * length and opcode.
> + *
> + * Return: allocated PTP command.
> + */
> +static struct iavf_ptp_aq_cmd *iavf_allocate_ptp_cmd(enum virtchnl_ops v_opcode,
> +						     u16 msglen)
> +{
> +	struct iavf_ptp_aq_cmd *cmd;
> +
> +	cmd = kzalloc(struct_size(cmd, msg, msglen), GFP_KERNEL);
> +	if (!cmd)
> +		return NULL;
> +
> +	cmd->v_opcode = v_opcode;
> +	cmd->msglen = msglen;
> +
> +	return cmd;
> +}
> +
> +/**
> + * iavf_queue_ptp_cmd - Queue PTP command for sending over virtchnl
> + * @adapter: private adapter structure
> + * @cmd: the command structure to send
> + *
> + * Queue the given command structure into the PTP virtchnl command queue tos
> + * end to the PF.
> + */
> +static void iavf_queue_ptp_cmd(struct iavf_adapter *adapter,
> +			       struct iavf_ptp_aq_cmd *cmd)
> +{
> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
> +	list_add_tail(&cmd->list, &adapter->ptp.aq_cmds);
> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
> +
> +	adapter->aq_required |= IAVF_FLAG_AQ_SEND_PTP_CMD;
> +	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +}
> +
> +/**
> + * iavf_send_phc_read - Send request to read PHC time
> + * @adapter: private adapter structure
> + *
> + * Send a request to obtain the PTP hardware clock time. This allocates the
> + * VIRTCHNL_OP_1588_PTP_GET_TIME message and queues it up to send to
> + * indirectly read the PHC time.
> + *
> + * This function does not wait for the reply from the PF.
> + *
> + * Return: 0 if success, error code otherwise.
> + */
> +static int iavf_send_phc_read(struct iavf_adapter *adapter)
> +{
> +	struct iavf_ptp_aq_cmd *cmd;
> +
> +	if (!adapter->ptp.clock)
> +		return -EOPNOTSUPP;
> +
> +	cmd = iavf_allocate_ptp_cmd(VIRTCHNL_OP_1588_PTP_GET_TIME,
> +				    sizeof(struct virtchnl_phc_time));
> +	if (!cmd)
> +		return -ENOMEM;
> +
> +	iavf_queue_ptp_cmd(adapter, cmd);
> +
> +	return 0;
> +}
> +
> +/**
> + * iavf_read_phc_indirect - Indirectly read the PHC time via virtchnl
> + * @adapter: private adapter structure
> + * @ts: storage for the timestamp value
> + * @sts: system timestamp values before and after the read
> + *
> + * Used when the device does not have direct register access to the PHC time.
> + * Indirectly reads the time via the VIRTCHNL_OP_1588_PTP_GET_TIME, and waits
> + * for the reply from the PF.
> + *
> + * Based on some simple measurements using ftrace and phc2sys, this clock
> + * access method has about a ~110 usec latency even when the system is not
> + * under load. In order to achieve acceptable results when using phc2sys with
> + * the indirect clock access method, it is recommended to use more
> + * conservative proportional and integration constants with the P/I servo.
> + *
> + * Return: 0 if success, error code otherwise.
> + */
> +static int iavf_read_phc_indirect(struct iavf_adapter *adapter,
> +				  struct timespec64 *ts,
> +				  struct ptp_system_timestamp *sts)
> +{
> +	long ret;
> +	int err;
> +
> +	adapter->ptp.phc_time_ready = false;
> +	ptp_read_system_prets(sts);
> +
> +	err = iavf_send_phc_read(adapter);
> +	if (err)
> +		return err;
> +
> +	ret = wait_event_interruptible_timeout(adapter->ptp.phc_time_waitqueue,
> +					       adapter->ptp.phc_time_ready,
> +					       HZ);
> +	if (ret < 0)
> +		return ret;
> +	else if (!ret)
> +		return -EBUSY;
> +
> +	*ts = ns_to_timespec64(adapter->ptp.cached_phc_time);
> +
> +	ptp_read_system_postts(sts);

Usually prets()/postts() pair covers actual transaction time. That means
the last error check and ns_to_timespec64() are usually no covered.

Not sure though how precise it can be because of several queues used in 
the process..

> +
> +	return 0;
> +}
> +
