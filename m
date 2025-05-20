Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B84C5ABE377
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 21:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3241F40659;
	Tue, 20 May 2025 19:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eC93B1ZL4Hfc; Tue, 20 May 2025 19:11:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A779940663
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747768298;
	bh=tDHpEN30HYe16zmjG98YWhY7ZjUM9QtM1Fy415Uu30E=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kMqun85CD41x+ktcp8JbzhfE6xvMwc6hvOhWcEr1VPwbgaiHCTMP2StlV3OX/VymZ
	 p+tUl15lNbz0TJ2WOSyuOSKTk7yjAnC+HS/Iv/2TBsQrBvE+lEjevxwyfcjviSBlZY
	 /5hD7Iq6VBh0WxGsLteTQ2M+jgsJWf1NYpdAceg9F3TT4xpRJsbMv4Ub+jMw8/am5P
	 uyG/a5Yer4EjvhFE+T1V0/lAcyXf25ULt87OqUMD2MewiKAM3aEI9gsxN4p8UR0IR+
	 wWQizoc492lyGVFHqnnwV0xT/OsH9C6qRwRIz0fQn8c/2yZLYRB4LecFFuPq+7jdvO
	 2cHGGos/clmCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A779940663;
	Tue, 20 May 2025 19:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 87B06D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E59540124
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a9XQkL3RN3fH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 19:11:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8710C40119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8710C40119
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8710C40119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:11:33 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af4e0.dynamic.kabel-deutschland.de
 [95.90.244.224])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D5CBC601EEA49;
 Tue, 20 May 2025 21:10:54 +0200 (CEST)
Message-ID: <7d901760-460b-491e-986a-4c5a4ac1fe17@molgen.mpg.de>
Date: Tue, 20 May 2025 21:10:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krishna Kumar <krikku@gmail.com>
Cc: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 davem@davemloft.net, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch, kuba@kernel.org,
 pabeni@redhat.com, sridhar.samudrala@intel.com, krishna.ku@flipkart.com
References: <20250520050205.2778391-1-krikku@gmail.com>
 <4068bd0c-d613-483f-8975-9cde1c6074d6@intel.com>
 <CACLgkEb+5OU+op+FvrrqiA1mgsp7NbA=KB_dCa532R6AL2c3Kw@mail.gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CACLgkEb+5OU+op+FvrrqiA1mgsp7NbA=KB_dCa532R6AL2c3Kw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] net: ice: Perform accurate aRFS flow
 match
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


Dear Krishna,


Thank you for your patch.

Am 20.05.25 um 17:44 schrieb Krishna Kumar:
> On Tue, May 20, 2025 at 8:18 PM Ahmed Zaki <ahmed.zaki@intel.com> wrote:
> 
>> Are these numbers with the patch applied? Can we get a w/o and with patch?
> 
> The numbers are for the original driver vs the new driver. For 
> purposes of calculating them, I had sysctls in the code (removed for
> submission) in the original and the new driver at each of the
> locations given above (a simple atomic64_inc(&kk_arfs_add), etc).
> 
>> A table might be better to visualize, also may be drop the
>> "rps_flow_cnt=1024*" case. I think it is enough to show min and max ones.
> 
> I will re-send the patch after adding this table (and Simon's feedback).
> 
>> Also, please add instructions on how to get these values, so that
>> validation team may be able to replicate.
> 
> I have a large set of scripts that measure each of these parameters.
> If you wish, I can send you the set of scripts separately.
It’d be great if you could share the scripts with instructions. Maybe 
you could even publish them in a git archive.


Kind regards,

Paul
