Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3751705362
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 18:18:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D01F41E60;
	Tue, 16 May 2023 16:18:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D01F41E60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684253887;
	bh=01AujKhh6/YVhM3kurRSX+8nYvXrhOFjaawGZnisuo0=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lkFqa1LmW6V47W0lLtxQYsJzqZAaVxAaMbGr7k6bJyo3TQ3HMz3++75wuxIRviCQK
	 i8wr8QRVgYBi1XspT3FrIOQTBtzIT/wPgSUdwBJxoWDlFzKw/7Sft2GHgOMKRXSXbT
	 PTR/h8RVJB0kcsezowd4ORsxnOUmspdGkt1UYU574ERURphBFL9sC7gDklD3U8KWbI
	 FYEJgEvgUugQKvt4m8Zitb+BjF0F7YtO6aSKjsk0iH2azyu5P4Yu92Tsf/T/LIuk2N
	 KAaiVuWFfZMHOlRhpn6TQTwxQFtavCkdpQhPkyDlbohYoi30Sp0XNaWlwZfjlQNexY
	 AzWug5aeu+Ypg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VVPU-ar986yD; Tue, 16 May 2023 16:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7D3740514;
	Tue, 16 May 2023 16:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7D3740514
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D53CF1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B01DA60A6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B01DA60A6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k4_b99N-p0yu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 16:17:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACBB3605BA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACBB3605BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:17:59 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-312-gA8G4ab2Oh2o1_wa1RrzgA-1; Tue, 16 May 2023 12:17:57 -0400
X-MC-Unique: gA8G4ab2Oh2o1_wa1RrzgA-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-94a34a0b75eso1362597366b.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 09:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684253876; x=1686845876;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pTbzb7Ep8RynUGNflCJEtG2qlbhJbczpgr8r4KMw/zg=;
 b=F+1I2eZBLzUEfpBU8Rhuuyi9vgVHiAgQ3rVAKxFcGpPY8QLUnvgqGs/Xi/imKs7GbX
 WdmiWU+ZQRhm+F8OC1dma55mBDqzv1VDNFc9gyVQPz/dI80+9czKDQpXSjamGwEQDXhi
 UEyqnfp327vg8McOxWCfxBUiQU64f42VMbod4lb5lzeZU2K5YCO17sHibns7JfGnKOVI
 9H/CAZID69Q38aEJYbFcn+2so0yGNyMsHpCcTjjYYC16RF/CkJZzOhixDl4XXU7We8m7
 0AFwPwv4zhKq/KKlCbgUEqgrtb5gW/jKpZta63MePdU327fRKiZSSID1PRgDhveFo+zR
 UnNA==
X-Gm-Message-State: AC+VfDwT66g78mLovPza6TcvQuBBhKs/ujgQmA6qwO5khtJceVQkqpYt
 738OjohVtyp5ntbEoQV6sI55Iht3eJ4SWYx4aI2ju2bmX3Cn+WGojlBkd1P7IJjQ6Rv5Dzy5pbn
 aYQdgiVL03Jefgq2/A2y+gpBxfhgiRw==
X-Received: by 2002:a17:907:a4b:b0:958:514f:d88a with SMTP id
 be11-20020a1709070a4b00b00958514fd88amr31234508ejc.34.1684253876123; 
 Tue, 16 May 2023 09:17:56 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5V2oSLqxxdSSdm1migvaEijLTSkJkHnpzZwu83PoVjaStqNRNRdE43yFnAIJq9NJklVz44Aw==
X-Received: by 2002:a17:907:a4b:b0:958:514f:d88a with SMTP id
 be11-20020a1709070a4b00b00958514fd88amr31234473ejc.34.1684253875788; 
 Tue, 16 May 2023 09:17:55 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 mm10-20020a170906cc4a00b00960005e09a3sm11160343ejb.61.2023.05.16.09.17.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 09:17:55 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <47d535b9-a42a-3d5b-1ddd-8f58766e826b@redhat.com>
Date: Tue, 16 May 2023 18:17:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Stanislav Fomichev <sdf@google.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-7-larysa.zaremba@intel.com>
 <ZF6DHOtnr/AfYxML@google.com>
In-Reply-To: <ZF6DHOtnr/AfYxML@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684253878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pTbzb7Ep8RynUGNflCJEtG2qlbhJbczpgr8r4KMw/zg=;
 b=HDSbi8xJfYjG6/DB/gz1/Cm0iDrtoGK+msQm8Sn8gIQYBkjEEbpgHYt/zMXpEYuBPcyKYc
 ARagLv0UC0HDL3dN+NkMwmZOX0BEknjsPeVBrYk7EioJ9se20puYjA0s1/3IO7UuK1eDWo
 BbVXQoSVeaKrr8SGgckQbUfC6jPEWls=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HDSbi8xJ
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 06/15] ice: Support HW
 timestamp hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/05/2023 20.19, Stanislav Fomichev wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
>> index 2515f5f7a2b6..e9589cadf811 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
>> @@ -537,3 +537,25 @@ void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res,
>>   			spin_unlock(&xdp_ring->tx_lock);
>>   	}
>>   }
>> +
>> +/**
>> + * ice_xdp_rx_hw_ts - HW timestamp XDP hint handler
>> + * @ctx: XDP buff pointer
>> + * @ts_ns: destination address
>> + *
>> + * Copy HW timestamp (if available) to the destination address.
>> + */
>> +static int ice_xdp_rx_hw_ts(const struct xdp_md *ctx, u64 *ts_ns)
>> +{
>> +	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
>> +
>> +	if (!ice_ptp_copy_rx_hwts_from_desc(xdp_ext->rx_ring,
>> +					    xdp_ext->eop_desc, ts_ns))
>> +		return -EOPNOTSUPP;
> Per Jesper's recent update, should this be ENODATA?
> 

Yes, please :-)

https://git.kernel.org/torvalds/c/915efd8a446b ("xdp: bpf_xdp_metadata 
use EOPNOTSUPP for no driver support")

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
