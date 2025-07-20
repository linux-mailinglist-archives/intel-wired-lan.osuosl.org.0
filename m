Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5E9B0B4FA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 12:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85E5D41300;
	Sun, 20 Jul 2025 10:47:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xGeU9iu2wLIm; Sun, 20 Jul 2025 10:47:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B782410F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753008463;
	bh=jXppDYkB/CLtGMSTjlPO5sKSjzJTwa5EEMJH+XUJYU8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EGygo9qO2rATJVsSba9KoNmt8F9kV80oeMqg3imghLLccYWiehwgMCFB5MaQhALhN
	 ZeJ3NoVt8dumoOiGtbMy2jAlmjbD6ye/dtfWQrpCQFAkHSJ61xucOKeY6bhjETpfCk
	 1a88971vTu6Yjad/63lSIh+eW5P/n9BMkcpQUp8wHMIYIhEqG5bDI7nsb2Qn+b4jyc
	 aaYaQNjXNvTU+60UG3aSZKmpUjS05s8QNe2OfMzrRmu8ao2v+RBMQKKV/0mz9JL9Hu
	 x9dfGFDzIKvtuZ/211ljCyWIJvDiANVaQ1wIEFny/jDVEexXze3Hg6hu4ARRWQH046
	 nn9ClmtKjJseA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B782410F8;
	Sun, 20 Jul 2025 10:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AA7A1F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 10:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BCF6841F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 10:47:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s4s6ov5g20g3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 10:47:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=ttoukan.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D5467841F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5467841F1
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5467841F1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 10:47:40 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-4560d176f97so38152635e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 03:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753008459; x=1753613259;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jXppDYkB/CLtGMSTjlPO5sKSjzJTwa5EEMJH+XUJYU8=;
 b=tUqKpzYum/1DEFovsUVRMQKZeK6JVHRk65y7rAQdrlKwTj0qsta2NhqC8e/nZWVcya
 TcTjctpRRLqsQSC6CdWwnbuoiyKEx2lFAq0hbmFw7MzQRXt0krAzFWqNIbqQ4pjL1BS6
 SLDzuFVeMOhNJcR4eMZBDxve3lE7V71Vjy/PsKhB14OmWfzObC8AiEsvO4/IXLA/hX8D
 tg0SzZ114neX2rx5+u9HotV5aQZJDefcSWTlydSsnb/d9AiI5IhLpwH43w7ro9nPbldm
 /pA1knQDNfdKvBkKK5Ig6xTjudcNKnQBZdrv5PU7GQP57UrIKr7WFcT4mRvyyvCtx4+i
 9C8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWj/4TMSj+NjY89/7h9pgprCFGXaBS+IY638X3JDKeAHm7fv9qfEDD+gcRc8zl9wS8n7ZquusVmr7cIuaN20gg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy27UkPw81g63+enA7G0l4ht4xwLrkBgeyryj4dV8Oq3OAg4rcw
 gmm5i3fAxW9CcMxQlmJWxUsXjWhoEIXpnQ1Vml0dtfrIMWrxVc0c9UtH
X-Gm-Gg: ASbGncuA474O/rlZlFJ4kmiAmUs3lneE70YJxFqD9tZ6CjaQvyPN8cLeBasZEwVBv9/
 VFmR9MbH+xXHpYs5C9LnZWYEpjs3RYvIWQLVWC37u63NhBciFc2O5AB3sVGWGpLXYNvy/vHakYW
 VmeJeCjWzmZsceNMwAz7+fY5DjL2r7VuoMXfFg8V6nxfq5lAkNAEJjIeqLpAnUyU8hbMeIOYaTJ
 C6qyQHUPWEUYeJD40EGV+ibGlQ7IdlcWx3x3JvaaQ9lZAS84gGXQY4kFcch+OmMbhOslUgCzoPp
 rJkev/5cUwR1gLoC8SVowsCC5v4FdXkk3T2fe+Ak6JV8zGl0ru3GAY95cxEZY0fVldn0Pac0oRe
 pqc6fM3vkdqC02wLm5oXYkihH495fZMGOnej8XgeT6FOX4vZaMSfWa0YlIA==
X-Google-Smtp-Source: AGHT+IGFX2jZ4V6/iEd8Ara4dWX6b93jNPyhb58hgpz2fHfo6DiHF+DpKuDmcFkoxMPT94DFoU2yDw==
X-Received: by 2002:a05:600c:4ed3:b0:456:1a69:94fb with SMTP id
 5b1f17b1804b1-4562e33d914mr159581915e9.13.1753008458288; 
 Sun, 20 Jul 2025 03:47:38 -0700 (PDT)
Received: from [172.27.57.153] ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b61ca486edsm7329869f8f.56.2025.07.20.03.47.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Jul 2025 03:47:37 -0700 (PDT)
Message-ID: <8933092f-c178-4207-acce-107c471d606e@gmail.com>
Date: Sun, 20 Jul 2025 13:47:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Tariq Toukan <tariqt@nvidia.com>
Cc: Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>,
 Gal Pressman <gal@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Shahar Shitrit <shshitrit@nvidia.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Cai Huoqing
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <1752768442-264413-5-git-send-email-tariqt@nvidia.com>
 <20250718175136.265a64aa@kernel.org>
Content-Language: en-US
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20250718175136.265a64aa@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753008459; x=1753613259; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jXppDYkB/CLtGMSTjlPO5sKSjzJTwa5EEMJH+XUJYU8=;
 b=AuUTnFV3KOttD3glS8Px49qeqfBQUsKQiGqwgjFnheOztRUTraaRxkHNLLcNBFxsmz
 g5nlWullf1aS1qe4NVtrYYlie6vq5zAuqWdSaPeMeD23nltorAERDLflRdjL2kFPowCI
 rFPKwi1Ljfr/9HgNkWde6daPYhgZ8bpQ1KVXpvMRK8tNaG2kOdVAhG1I+uDssIyb0kyG
 HXMXE7aFFZ3kJW6dL/DukrXRlN685aZQyiNfm38KuiiRGQLwKgw6r9xY1w1fZH65pc9i
 FhV1tH9k+4yErNrvIPEOS+haSUtKXhOeyN3embh+W4IPqhlORgzD467pzw/DETQ+R8IV
 SsiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=AuUTnFV3
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] devlink: Make health
 reporter grace period delay configurable
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



On 19/07/2025 3:51, Jakub Kicinski wrote:
> On Thu, 17 Jul 2025 19:07:21 +0300 Tariq Toukan wrote:
>> diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
>> index e72bcc239afd..42a11b7e4a70 100644
>> --- a/include/uapi/linux/devlink.h
>> +++ b/include/uapi/linux/devlink.h
>> @@ -634,6 +634,8 @@ enum devlink_attr {
>>   
>>   	DEVLINK_ATTR_REGION_DIRECT,		/* flag */
>>   
>> +	DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD_DELAY,	/* u64 */
>> +
>>   	DEVLINK_ATTR_RATE_TC_BWS,		/* nested */
>>   	DEVLINK_ATTR_RATE_TC_INDEX,		/* u8 */
>>   	DEVLINK_ATTR_RATE_TC_BW,		/* u32 */
> 
> BTW the patch from Carolina to cut the TC attributes from the main enum
> is higher prio that this.
> 

WIP. We'll send it soon.

