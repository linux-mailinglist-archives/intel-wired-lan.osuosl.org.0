Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61162AC62E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 May 2025 09:24:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D788081352;
	Wed, 28 May 2025 07:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AxbNXfiOapdr; Wed, 28 May 2025 07:24:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ED9B81349
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748417090;
	bh=6XYHyB+9SF/Z+X8QKiEUWQZQ80MVzujdD87l+S5+Um8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NMwTudffjq20658D/zv2gHeB1jKYBI72FlkJGiQSwXW0v3zAKokEMqWJPDpn5EMtH
	 YNzEM/welewLMTzixHOr8u/zi/dfcjjMhfcmk091Vwbpp145kszM5u8ie8Rr19heBC
	 zvxbbhm6RULPo+NE612KCqvb0tuLKVMC6cwmGXAZLXAxlmWSfrY39E/uo6sw0lXzn1
	 ncMRmST9mQMYnr19NtaI2jT1sZHOtXxBZD5nOcqbQ/0QqeWX5nt2nER3Af31OlECBI
	 Msb/++a1G7aXfSgC2eJRj8eD9evVHiHxL/do8dYc0NgHCkebRCaowvwjSrsmkkdIhm
	 X8XqsKva6B52A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5ED9B81349;
	Wed, 28 May 2025 07:24:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 140F8B66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 07:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 047678134A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 07:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JKNhnLc0NK7n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 May 2025 07:24:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 47AE38133E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47AE38133E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47AE38133E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 07:24:47 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-135-EETCSffBO2CoDT-nonEGQA-1; Wed, 28 May 2025 03:24:44 -0400
X-MC-Unique: EETCSffBO2CoDT-nonEGQA-1
X-Mimecast-MFC-AGG-ID: EETCSffBO2CoDT-nonEGQA_1748417083
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-442e0e6eb84so26361035e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 00:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748417083; x=1749021883;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6XYHyB+9SF/Z+X8QKiEUWQZQ80MVzujdD87l+S5+Um8=;
 b=llL51fCpF7O/t8nwNq64lvBpHPvUAwmPJ5hOXe33MmedEkI77jX3o56C4bah9ElpSe
 ff7HueSauSYzNObJ9uWJ2qrnsPxU5cevhM/3AKD7HrYxJV9WCbt/yZjGs3qFpR5h924s
 5ZIDZaxUBCqmW0xF4zhIESsI3aKqyik0ATzV1+shcqkivKU5NS7Iyh7gU+GDiAJ1oVtv
 0y+ZBp5Jsu702WEDvcttR2jxOEZzbG+Sa0T6q8oyvUu3w7/CDuAMQkuSUXckkC4WqjRc
 WTX5jIGDhiVgyq5mYFy7IJS/dmC3mpTlGRjHY7zFBAktlhhtihkrOZ21eTOMR8YGNApa
 4Iqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8Y/hm0OdA8PUpimW0Eia+0u8J189XXjX8L6cM394hivfVp7J3mUEmoduq97nO/yVWRWX3HNZRoR5+MmaamSs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx8xoxcOi7CKS6UmLxvmQvfEWiABzW0LlrEzaMtYx6w9Ajqny4x
 kieLo5W2p6+MtHKtYPrnr8Sna+gnfXMDUXe21MXbb1dbJzwNdecKw4UiwN7DRJjBUCLYkJB5fRh
 fqB14WdZdozK7znakspyBI+Ss0nqfWGtwIEW1qGm3WaIhVCqkX0N2oq5w0z0Pi/RIvdUAJMc=
X-Gm-Gg: ASbGnct6DBfU9wQIkjLciEMgnhD178CLx6Ch4Tvv9xJS8qCotJkOdg3JJvEhDmCHIcW
 EzYh+kWBdJAnkN3NPQkhBgZlseyGucOGn58sHJnuYSqtyrVx4vLZwzzphCg2Gu9qk6CWYv/jdi4
 NFnXtvVfCDDKZ/YD79HGZasjJweVsEOsC1/Ob1N1gWuGJbH3/WXy5SLRFSHU+UHBMRrQBsn35yx
 RAg3B4ta5sIHLinXM6q+uzsOyUeWAAdOhsi/h7LDFRQtO/DxHR33Dn9wqmqBqctY6YJUVbyBEKl
 ssbl5w/TJ5RQ4HhKHS73X6eZdnZSPCrERDLEACl+J0SKszy2S6kivoNn5T0=
X-Received: by 2002:a05:600c:5618:b0:441:a715:664a with SMTP id
 5b1f17b1804b1-44f840b38bcmr46892625e9.20.1748417083449; 
 Wed, 28 May 2025 00:24:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCqE1uwRo600JGmvrx2hbwcJjRSG8+fqxy1BRdw24yujy5GkHaEMyOu3ekjIht4ITlGdwQlA==
X-Received: by 2002:a05:600c:5618:b0:441:a715:664a with SMTP id
 5b1f17b1804b1-44f840b38bcmr46892395e9.20.1748417083030; 
 Wed, 28 May 2025 00:24:43 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2728:e810:827d:a191:aa5f:ba2f?
 ([2a0d:3344:2728:e810:827d:a191:aa5f:ba2f])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-450064ae775sm11977185e9.22.2025.05.28.00.24.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 May 2025 00:24:41 -0700 (PDT)
Message-ID: <dbc34cfe-c788-46bb-bd26-793104d887ab@redhat.com>
Date: Wed, 28 May 2025 09:24:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>
References: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
 <20250523172650.1517164-2-arkadiusz.kubalewski@intel.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250523172650.1517164-2-arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YArzbxEX7ZG03JG6xKSy5PuF9gxXdPgfTnywE26pX8c_1748417083
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1748417086;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6XYHyB+9SF/Z+X8QKiEUWQZQ80MVzujdD87l+S5+Um8=;
 b=ff6Tt3WkDfS/WEuuQYI8kxdyNwFSZMOSvcGPDm6CZsAP2i1rvkwkpi6o+K+e2gbjoN2SwN
 /9cqQXQj9Dt6VoK9YwyREchpeDFjjgO/QHRaq51MyX8kiygMhzWEcfuXiW8OdtmeuUMelY
 uzRUr8xqOU1YNPopnODosrZogkDODmo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ff6Tt3Wk
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] dpll: add
 reference-sync netlink attribute
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

On 5/23/25 7:26 PM, Arkadiusz Kubalewski wrote:
> Add new netlink attribute to allow user space configuration of reference
> sync pin pairs, where both pins are used to provide one clock signal
> consisting of both: base frequency and sync signal.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Same reasoning of the other series, please repost after the merge
window, thanks!

Paolo

