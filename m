Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B97BA3335
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 11:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 778A884AE0;
	Fri, 26 Sep 2025 09:40:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w2coisfizMYB; Fri, 26 Sep 2025 09:40:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C15484AE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758879658;
	bh=bfnGggrEWUuSTcwCWFUw26kUzRfzuZNMtwAcFeMvGfk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lif36FMudpRJfpdLtxqnqCjxuUKYEU6kxHOjpV+wqiWzf+YQNlLI5jdcieuakrm5Q
	 FAJZKcSb5OMyGVDSMnvGpN0y0qE8xolzva2iLj6lKcBGczvK6OHSBWzAKSwdtnmGVs
	 Q0L9YtB1B5YvBOepAvhxo57khCo5cgHjHJhpYydcShC4MAhk/qt12iZBvJahf9k9Th
	 eBHNLfFFEt5Kbz+q40oqo2GJcWjIHOEIZlN6K1tvFfnQ2mgCKuNedfP/SLWjGY34aF
	 awZbsM/jEgimVEZafBtOzO/LXPbEX1HJm+V0vApuf2wpg9SOW/Mq1YP3LPErf3ljgm
	 kX1UlLohDDfMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C15484AE6;
	Fri, 26 Sep 2025 09:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 20C3412D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06A64849F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:40:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_wg7BiBzff4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 09:40:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC3E2849E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC3E2849E1
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC3E2849E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:40:55 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-b346142c74aso378659166b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 02:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758879654; x=1759484454;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bfnGggrEWUuSTcwCWFUw26kUzRfzuZNMtwAcFeMvGfk=;
 b=rFBDfhuaxCc5zhhpcGw7egieD6dnf50Qiw2vOBfdFJjKH6nRp3MwDjtvMoT5TQK3uH
 7px4mV3glX7ESXbKZJGnmI81hDipsIUnMxwPYZqTiRTEQjsRA+ZoDbQDWMF3ud+mLl9E
 gA652h/2j5l0Ld56wv9aBtGlbJgdDOm1xW9KF2T86nrVsPjGAuC4bKkjIcsy95F0U59Z
 WHepye0AqjB2aRx0jZq5BiQyMUwFK80PJVQN9uLnNyb+g8QoHPeL69tnnOAIOZc3WJwX
 EHSbeVRuIxUfJukfxiGtYro+hvBsF+rpn/r97NN83MmbUdfJWQQTNePGzmsJknyob2ST
 l/Eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXQR4d0lZz5TICOReztHR7rCIc7igTEEc6C51MbOe8MhQeClfjt558RuvQTegaUtR5/6ZE+0RvH4h/8tM+e58=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzNGtf429xqfME2JqoGn9f7AOgnBhF9mHClLo3Jm+5JmVdBr+tG
 tPifQqn9gW9c2odCxSCCCT0UbXNhzVwAeDj8ekd63znEEKp4QnfsDW/GpmHK4TisI8A=
X-Gm-Gg: ASbGncu7bjnvt+LfZUP+3r085Td0PhYecbKDN6f1kxmgKdnKf+XwnuBIsgISL9W7w4r
 6OHoQIzimg8fqkKVvwrVO0w6905rH3OocSTuhMX+uK3kP5mUfkBPzE/yoPhMqEhctJwImLeDEkH
 0+/J+FuHPlmV5MPLT2SDVPPlfSwE57y6jB+PFOyk+qgOEnfzJvMp/ngl1dL6TxnOOnSSOM0akcM
 2hV6HeRqK5EMthY/y58Pf/co7wV9VYOq84DY67He54590BYlJZxRd6hFT7O5Sz7X6ym3zvLH8z3
 rZLypJ5ERHm2DPhtNrAwkbqiGGGKkUrzVuhJNdEvh6ygq5YVfvtLan4fdNJ2H1kTy8TazAwKFwe
 bx5MEYJpW2WI6Sa4=
X-Google-Smtp-Source: AGHT+IEx87dvLbs8zYXX1kmFHzSkQDWXCcEaHIBwECYQqOzBzrboZ8xaGC921BePUzyI0T1ED/vkEQ==
X-Received: by 2002:a17:907:3e21:b0:b34:99e3:3a88 with SMTP id
 a640c23a62f3a-b34bbccf844mr658946166b.58.1758879653689; 
 Fri, 26 Sep 2025 02:40:53 -0700 (PDT)
Received: from cloudflare.com ([2a09:bac6:d677:2432::39b:a2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b37b3b46ba0sm131571766b.2.2025.09.26.02.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 02:40:52 -0700 (PDT)
From: Jakub Sitnicki <jakub@cloudflare.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Michal Kubiak <michal.kubiak@intel.com>,
 <intel-wired-lan@lists.osuosl.org>,  <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>,  <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>,  <przemyslaw.kitszel@intel.com>,
 <pmenzel@molgen.mpg.de>,  <anthony.l.nguyen@intel.com>,
 kernel-team@cloudflare.com
In-Reply-To: <182d8f19-aca7-482e-8983-3806ebb837ba@intel.com> (Jacob Keller's
 message of "Thu, 25 Sep 2025 10:22:16 -0700")
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
 <877bxm4zzk.fsf@cloudflare.com>
 <182d8f19-aca7-482e-8983-3806ebb837ba@intel.com>
Date: Fri, 26 Sep 2025 11:40:51 +0200
Message-ID: <87plbd361o.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1758879654; x=1759484454;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=bfnGggrEWUuSTcwCWFUw26kUzRfzuZNMtwAcFeMvGfk=;
 b=UXZQ+zwQxUlGqVjEYwMMB0pOWbPKGvg0+z3PvUWunqC7tShz0HTKazx5OjV6oKI0eM
 jycUaheV4r6kNbHDVvj+ADj5I1kWNrfpXJzhE+rEgaujrxgMY1u2SZOJ0pSkZoWWOLI+
 a2oDSvIb4uvHCU2zYI6crlCc5NBMc2VFB07J0Qb2MmVTwbw/HT3KZS4Gf6d0KSBaiH2x
 NJGZ6kAoOi6M6q56zEn5LrG8LlRw3AmqT+RNhjUrGVjQaf8F5XDrVy4czj15Qr0FPPI2
 Vdlc/JgxzjgPI3j5pUeBC/fK/a91pZt9XqNC3i/1No9BnBSBPM5tsURlhMyqUZfCbASs
 lOpw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=UXZQ+zwQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: convert Rx path
 to Page Pool
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

On Thu, Sep 25, 2025 at 10:22 AM -07, Jacob Keller wrote:
> On 9/25/2025 2:56 AM, Jakub Sitnicki wrote:
>> On Thu, Sep 25, 2025 at 11:22 AM +02, Michal Kubiak wrote:
>>> This series modernizes the Rx path in the ice driver by removing legacy
>>> code and switching to the Page Pool API. The changes follow the same
>>> direction as previously done for the iavf driver, and aim to simplify
>>> buffer management, improve maintainability, and prepare for future
>>> infrastructure reuse.
>>>
>>> An important motivation for this work was addressing reports of poor
>>> performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
>>> incurred significant overhead due to per-frame DMA mapping, which
>>> limited throughput in virtualized environments. This series eliminates
>>> those bottlenecks by adopting Page Pool and bi-directional DMA mapping.
>>>
>>> The first patch removes the legacy Rx path, which relied on manual skb
>>> allocation and header copying. This path has become obsolete due to the
>>> availability of build_skb() and the increasing complexity of supporting
>>> features like XDP and multi-buffer.
>>>
>>> The second patch drops the page splitting and recycling logic. While
>>> once used to optimize memory usage, this logic introduced significant
>>> complexity and hotpath overhead. Removing it simplifies the Rx flow and
>>> sets the stage for Page Pool adoption.
>>>
>>> The final patch switches the driver to use the Page Pool and libeth
>>> APIs. It also updates the XDP implementation to use libeth_xdp helpers
>>> and optimizes XDP_TX by avoiding per-frame DMA mapping. This results in
>>> a significant performance improvement in virtualized environments with
>>> IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,
>>> performance remains on par with the previous implementation.
>>>
>>> This conversion also aligns with the broader effort to modularize and
>>> unify XDP support across Intel Ethernet drivers.
>>>
>>> Tested on various workloads including netperf and XDP modes (PASS, DROP,
>>> TX) with and without IOMMU. No regressions observed.
>> 
>> Will we be able to have 256 B of XDP headroom after this conversion?
>> 
>> Thanks,
>> -jkbs
>
> We should. The queues are configured through libeth, and set the xdp
> field if its enabled on that ring:
>
>> @@ -622,8 +589,14 @@ static unsigned int ice_get_frame_sz(struct ice_rx_ring *rx_ring)
>>   */
>>  static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>>  {
>> +	struct libeth_fq fq = {
>> +		.count		= ring->count,
>> +		.nid		= NUMA_NO_NODE,
>> +		.xdp		= ice_is_xdp_ena_vsi(ring->vsi),
>> +		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
>> +	};
>
>
> If .xdp is set, then the libeth Rx configuration reserves
> LIBETH_XDP_HEADROOM, which is XDP_PACKET_HEADROOM aligned to
> NET_SKB_PAD, + an extra NET_IP_ALIGN, which results in 258 bytes of
> headroom reserved.

That's great news. We've been observing a growing adoption of custom XDP
metadata ([1], [2]) at Cloudflare, so the current 192B of headroom in
ICE was limiting.

[1] https://docs.ebpf.io/linux/helper-function/bpf_xdp_adjust_meta/
[2] https://docs.kernel.org/networking/xdp-rx-metadata.html#af-xdp
