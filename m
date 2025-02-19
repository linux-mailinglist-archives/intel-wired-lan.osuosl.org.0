Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B731A3C60B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 18:22:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 683CD4098B;
	Wed, 19 Feb 2025 17:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gOoB9pUeMi5R; Wed, 19 Feb 2025 17:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 558845657D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739982508;
	bh=6FOZ/bBzD4HMK7CgshYavLpWPqYx8vrkrfYDF9nQrEI=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PPdCMQGPtsA92WnwUYP6pkWQL5juOnsv7ICAZWIZpZgFW3kZpshpMD+i8U8uS19fN
	 /n5HrIm1EgMqfJkMSLwSbAWJBtRbyFcH0li0t6C0aNnV4Cj+x2Fc7BIEwPKi8stcQS
	 S1Yt7N8DMl8V6W0RZq42ELKY3V6dI7h3d1rVy880xeU1tNvNmcrLoXL9Urxv+KV+2R
	 p0nlj4IVnBmRFCFGpzpxJ9jpHE4VdGteTR6qK3hBWOU5Oa5aOh/7vleOG1CDDbBgVv
	 nciEiX+sok5AuoY1CnND+9lUXZoTTIggsHkx6XUYEy7ZXvESrch0k9Pe/BP3DQ4+5q
	 HsqPa2SHJponA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 558845657D;
	Wed, 19 Feb 2025 16:28:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 11405127
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30BCC53D9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mi7o3g9Fh7Tx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 13:49:28 +0000 (UTC)
X-Greylist: delayed 4203 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Feb 2025 13:44:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91E6453BD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91E6453BD2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=46.105.59.63;
 helo=4.mo575.mail-out.ovh.net; envelope-from=mateusz.kusiak@3mdeb.com;
 receiver=<UNKNOWN> 
Received: from 4.mo575.mail-out.ovh.net (4.mo575.mail-out.ovh.net
 [46.105.59.63])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91E6453BD2
 for <intel-wired-lan@osuosl.org>; Wed, 19 Feb 2025 13:44:02 +0000 (UTC)
Received: from director8.ghost.mail-out.ovh.net (unknown [10.109.148.200])
 by mo575.mail-out.ovh.net (Postfix) with ESMTP id 4YyYh6560nz1rWH
 for <intel-wired-lan@osuosl.org>; Wed, 19 Feb 2025 11:14:46 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-tmzkz (unknown [10.110.113.129])
 by director8.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 3CD3F1FEA4;
 Wed, 19 Feb 2025 11:14:46 +0000 (UTC)
Received: from 3mdeb.com ([37.59.142.113])
 by ghost-submission-5b5ff79f4f-tmzkz with ESMTPSA
 id 6uZpOyW9tWdNuQAA35ccpw
 (envelope-from <mateusz.kusiak@3mdeb.com>); Wed, 19 Feb 2025 11:14:46 +0000
X-OVh-ClientIp: 213.192.77.249
Message-ID: <9238ba37-583e-4a65-be27-0473cd682bf1@3mdeb.com>
Date: Wed, 19 Feb 2025 12:14:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-wired-lan@osuosl.org
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
From: Mateusz Kusiak <mateusz.kusiak@3mdeb.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 13629581323767483176
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeigedtlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfvvefhufgtgfesthejredttddvjeenucfhrhhomhepofgrthgvuhhsiicumfhushhirghkuceomhgrthgvuhhsiidrkhhushhirghkseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeeujedvfedugfeihfefffelleekgeejteetvdegffegtdfhtddtfefgudeggeetleenucffohhmrghinhepfehmuggvsgdrtghomhenucfkphepuddvjedrtddrtddruddpvddufedrudelvddrjeejrddvgeelpdefjedrheelrddugedvrdduudefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehmrghtvghushiirdhkuhhsihgrkhesfehmuggvsgdrtghomhdpnhgspghrtghpthhtohepuddprhgtphhtthhopehinhhtvghlqdifihhrvgguqdhlrghnsehoshhuohhslhdrohhrghdpoffvtefjohhsthepmhhoheejhegmpdhmohguvgepshhmthhpohhuth
X-Mailman-Approved-At: Wed, 19 Feb 2025 16:07:06 +0000
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=6FOZ/bBzD4HMK7CgshYavLpWPqYx8vrkrfYDF9nQrEI=; 
 c=relaxed/relaxed; d=3mdeb.com; h=From; s=ovhmo3617313-selector1;
 t=1739963686; v=1;
 b=E3qi2N1CFECI0tmb82JMmbbvjvamEFsWhBLcyX3SoB9bpbujwTpGLqmLzGyGnFfENYwDEWGj
 /XNccv6p02fyJpiGrmx57+vHtx2WMvxzGrAwaxuYlPWjY9NvYJ7ni4h/mPj2r7xbRzF/y98Jefc
 gJSCpMYZptJLYwHHl3fckzESGm1ti0/cUT42h/HbuDO8qaaTsyYLGzjCKjX+vu7W8kWnTDCfCcv
 +TxEemjclqP7S9V+ZwsgmP8IsRc404Gp1K8v96PmMmtD+AYRSzAwJV2LXt70p4DFBNER3evyU+q
 0A4xmC8smz0A4CadKGkuVNXDMIQgeGSkKpwYcKkfyLb7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=3mdeb.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=3mdeb.com header.i=@3mdeb.com header.a=rsa-sha256
 header.s=ovhmo3617313-selector1 header.b=E3qi2N1C
X-Mailman-Original-Authentication-Results: garm.ovh; auth=pass
 (GARM-113S007a4f2172a-e0ca-4d12-a78f-ac16b1736025,
 9BE4DDA8B12D978CBF4F9309178B95F18A4E447B) smtp.auth=mateusz.kusiak@3mdeb.com
Subject: [Intel-wired-lan] igc: forcing speed configuration (no auto-neg) on
 I255
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

Hi all,
I've done research regarding igc driver and I225 ethernet controller. I 
established that neither igc driver nor hardware (I255) support forced speed 
configuration (disabling auto-negotiation to be exact). Could anybody please 
confirm this?
Is there a known, particular reason for it?

Thanks,
Mateusz

-- 
Mateusz Kusiak
Junior Embedded Systems Developer
https://3mdeb.com | @3mdeb_com

