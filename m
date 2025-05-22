Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 870AFAC0525
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 09:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C7A0613A5;
	Thu, 22 May 2025 07:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jdscqt7zqqfG; Thu, 22 May 2025 07:02:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B724861341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747897320;
	bh=i7GpkF0r1aa50gwZBhQ/7KmjAfA2O5689oPWjcEqrgI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=snN+QHjHBZp0iVMDSOySgHRGshy3Hb4FtBtaaAIm9LXKGTT9SYRIsRvDIf1GgWYdS
	 iPlgAZDfUsgeOzo9m7nVjw1omLJt+41p7G7rzoYOxY2eYrOxd1/lZ0UJQxEBJy+23s
	 zNOTsTZ7WRy8hc/p0iW9y0FrCmppVvAp69PBED3ck5wdL1ytRtwXRrWi1+G83fnWuR
	 g8f5695NFL/BwG1vGRau7k5sAGjMOBDPi1x2y2heT9jK1gQPwi4I5V3B45NY7JoaCi
	 CX91D2xA3tduKeS0+QcksdCbduyTI453CHxEjpAvISGgM2IUtECFwBfjPzmam65TUp
	 9al1PEdjcLocg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B724861341;
	Thu, 22 May 2025 07:02:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 83688106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7531481EF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:01:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNtpcB4JOrZA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 07:01:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1FA081831
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1FA081831
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1FA081831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:01:56 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af503.dynamic.kabel-deutschland.de
 [95.90.245.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B5E3461E64855;
 Thu, 22 May 2025 09:01:35 +0200 (CEST)
Message-ID: <4b67b9cd-47d1-4fbc-8de0-86d364f36dce@molgen.mpg.de>
Date: Thu, 22 May 2025 09:01:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
 <8c8999a7-d586-4bc6-9912-b088d9c3049f@molgen.mpg.de>
 <46e45673-66fa-4942-a733-fdcbc95b5ee1@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <46e45673-66fa-4942-a733-fdcbc95b5ee1@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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

Dear Dawid,


Am 19.05.25 um 13:11 schrieb Dawid Osuchowski:
> On 2025-05-16 10:57 PM, Paul Menzel wrote:
>> Am 14.05.25 um 12:46 schrieb Dawid Osuchowski:
>>> E835 is an enhanced version of the E830.
>>> It continues to use the same set of commands, registers and interfaces
>>> as other devices in the 800 Series.
>>>
>>> Following device IDs are added:
>>> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
>>> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
>>> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
>>> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
>>> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
>>> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
>>> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
>>> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
>>> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP
>>
>> Should you resend, it’d be great, if you added the datasheet name, 
>> where these id’s are present.
> 
> Sorry it isn't publicly available yet.

Too bad, but the name of the datasheet would still be useful in the 
commit message, so people could point to it, or, should it ever be made 
public, can find it.


Kind regards,

Paul
