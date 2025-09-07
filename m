Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E60A6B479F2
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 11:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7933C61C23;
	Sun,  7 Sep 2025 09:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J2WsvvS7oifY; Sun,  7 Sep 2025 09:07:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A6EF61C1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757236038;
	bh=yu8rkgDTc/PosSKRpJdtQdj9FaNdWHm11nIU7Iih4yk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YTn3xW4DyHa4KQ9Ej12ucfsj/7A2EPvrYeTcHF9ZDTbaTR7E3+BJK6W/DwdYKwL5+
	 HQtDQqet1SBYpJ5PTo/MdseenJTTWvQq71nmzf1NY/7zZoHcwInS9FSq7v+cPMaY3z
	 U60OdRfx3eEPr6P7lWIlNctbkcoUIPK6OJ+CBAj2eKOPKDw1pzqpXJJYMYZyxLJjMq
	 uw+Ob/UQtQcPM5aVfbgA/rzt9AvksYdF4+tWS1fsiW/fWJYJtEEDzSWXeoO20oji+0
	 9A+rauykFZX6XB3sjH4gZdO0sbNKa6U9ADnJCu+bHAHBFhCkmTbZFoR+15oGEHJBFD
	 QbdTSr2XAo5Eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A6EF61C1F;
	Sun,  7 Sep 2025 09:07:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B8B09E4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 09:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E4BD846F0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 09:07:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qow8T8ttBU8R for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 09:07:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9587846DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9587846DF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9587846DF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 09:07:15 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-375-3fnqAZ1DNz6lY7Jplz_mHw-1; Sun, 07 Sep 2025 05:07:12 -0400
X-MC-Unique: 3fnqAZ1DNz6lY7Jplz_mHw-1
X-Mimecast-MFC-AGG-ID: 3fnqAZ1DNz6lY7Jplz_mHw_1757236031
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3e61deaf253so620541f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Sep 2025 02:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757236031; x=1757840831;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yu8rkgDTc/PosSKRpJdtQdj9FaNdWHm11nIU7Iih4yk=;
 b=euBYXmEi9JULXdZCnBlG0a3HFKN8lVp8WS+MbYIDU0VDsWmTTbOKH5yzRUQU/tef5I
 lO7CvE290dUGJvFL9/tU9sOnlf+iZjLfnzsUJ5gU7LNMkN3OSKODFL2k+qxSo7gepCY3
 ojJjFhisB6VOcO2V5eTDmfaa7Uyruy4JzpG7yn0gs1mzQv56VnBrusuZgnOT72oxhsPh
 46qAG9+VsYx3aalO9CX+fovl1WlsPGCHHsKF3VO69c14lfE6cT0CEvwXW2Wwwayli3dE
 NJdzGQepxpA9o2vLI8rImckRlWgLH5k1/z/1PNuu3BmSIusqXuB6uW4DiQ/VurnEw7aK
 JryA==
X-Gm-Message-State: AOJu0YxP9MHk26BG5bsY+4DhlRy9KtOUhuSp1SEIi0n6a4OHPKJoIOGu
 3IanPPvgIrqvDFVolqGBScP1wiOFa3q235Zo4LVDKn9WhHyld7gh9aGsiTm7bA19SN4r0uKmGWr
 SZ3DL+V4+f8LeLkmgm/kLsGYK+yTPK7mwWn5YCI81xvvO0zg8C8ueAM/AiH5uWjCzMjj4ucs=
X-Gm-Gg: ASbGncvKhbVbvBiW6GpEzc0an3/lUaycw6SP7B/sy1srjme5Hzc3mmro4l7smTBHNjl
 mEB1j2d09zQZ8XZNqdnupSpkYxWRccrdPekMTzGky0nBbDVEpYBGfSLN0GCohWKpYPHe9A6rzvn
 i1gQYoyEAQS/NXZ7UPq7hEcVZgdT5etPcfBVlLR8+OeNIlH8JgC6P+M/A5ox5azKJq40gU+wIi3
 u9sb5Sxlddx2kqzihEKGaS4Y6uHrc9V4Ukvw5LbXjorxVa07KEvHuxzdVs/U5lMhUxli9ABhwIP
 wgtQNSVdK9jPFI0t36YEPpu8YRTzot3r2h/QWXsTFgg=
X-Received: by 2002:a05:6000:18a9:b0:3cb:5e64:ae8 with SMTP id
 ffacd0b85a97d-3e636d8fceamr3922910f8f.11.1757236030735; 
 Sun, 07 Sep 2025 02:07:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfO68JW1NGSpUdkVAUAJ1tw+Jh6Ta/iYbBbRcoHt8MjGZV3zlBWMzK0eU//tMT6SeIWZ7awg==
X-Received: by 2002:a05:6000:18a9:b0:3cb:5e64:ae8 with SMTP id
 ffacd0b85a97d-3e636d8fceamr3922891f8f.11.1757236030331; 
 Sun, 07 Sep 2025 02:07:10 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45cb687fe4esm169329195e9.23.2025.09.07.02.07.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Sep 2025 02:07:09 -0700 (PDT)
Message-ID: <adecffa2-19cd-4630-be0d-8c4b597c8181@redhat.com>
Date: Sun, 7 Sep 2025 12:07:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com,
 jiri@resnulli.us, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250905122238.GA553991@horms.kernel.org>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <20250905122238.GA553991@horms.kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kX3y2gaGnp_Q_nAKUCNjvrbiWGpTddt5F6z7ML0DGcs_1757236031
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1757236033;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yu8rkgDTc/PosSKRpJdtQdj9FaNdWHm11nIU7Iih4yk=;
 b=Ya2ZFPQtbo/b61ZTTFXttMKErh52licIfMs1E4LfHbqnWz4cMtJYvCyA1mb5P9csP6HWRT
 MxUHOcjMMHtf70Zy4lWFrsMTMRq/oLLocbxbXfOI9HXAG6JpsRowGly2HAB15B4ehKdfYv
 31724+k7+xw+Cx6UfQ7ILi58SOblPl8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Ya2ZFPQt
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 1/2] devlink: Add new "max_mac_per_vf" generic device param
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

Hi Simon,

This patch set targets the iwl tree because the second patch depends on 
changes [1] that are already in the tnguy/net-queue.git tree but have 
not yet reached net/next.

[1] e08bca25bd7f ("i40e: improve VF MAC filters accounting")

Thanks,

On 9/5/25 3:22 PM, Simon Horman wrote:
> On Thu, Sep 04, 2025 at 12:43:04AM +0300, mheib@redhat.com wrote:
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> Add a new device generic parameter to controls the maximum
>> number of MAC filters allowed per VF.
>>
>> For example, to limit a VF to 3 MAC addresses:
>>   $ devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>>          value 3 \
>>          cmode runtime
>>
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> 
> Overall this looks good to me, thanks.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> One point: This patch-set applies cleanly to iwl but not net-next.
> If it is to be picked up by Tony and go via the iwl tree, then all good
> on my side. But if it is targeted at net-next then you'll need to
> rebase and repost.
> 
> ...
> 

