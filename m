Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE528FB5A8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 16:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8860081CBA;
	Tue,  4 Jun 2024 14:39:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mlkDe4vR84x3; Tue,  4 Jun 2024 14:39:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F77081C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717511966;
	bh=o3E+JH1+TzJUdG5VaQW8vr5zl+ge8C0byq5CrZ0XFCc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GzhqwzPVLTI8ZbNigizoXhN5GrNqSODPnrMgrTxQN4Lcfl7rkmHxShEQNq5wVTC6r
	 Z3SWf512VUEmDVm4VQW6DjqB8ouA81/IKeKOPNvFd2ET+K8eQhUdEoasC2rY6UWAN8
	 Pj0a2ERJS5E6fFWTN0+qelScwTpkyN0mrvsn03Xm6dsmN7MdDJ2aOgAtzM+zfrCThJ
	 wDa/qSRmBbMx21UtSEw2+Lx7yyUaZT4Wd7KrOO8hgEWdOrtF1dVRPYgbUegKwKGcjz
	 E9sFlYSRn/YdWa5KZL5HhvK/uzFdd+tzsPPkJ9hpiTD/gXOrWXZNKRe4+zqJqH/SvA
	 iL2GZdTgzoYsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F77081C67;
	Tue,  4 Jun 2024 14:39:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D83361BF869
 for <intel-wired-lan@osuosl.org>; Tue,  4 Jun 2024 14:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C14E181C11
 for <intel-wired-lan@osuosl.org>; Tue,  4 Jun 2024 14:39:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iX_l7V4IZYbS for <intel-wired-lan@osuosl.org>;
 Tue,  4 Jun 2024 14:39:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4164681BF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4164681BF4
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4164681BF4
 for <intel-wired-lan@osuosl.org>; Tue,  4 Jun 2024 14:39:20 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EF6F361E5FE06;
 Tue,  4 Jun 2024 16:38:59 +0200 (CEST)
Message-ID: <7a58c20d-36f4-41ff-bd35-f64e7e1f6dfb@molgen.mpg.de>
Date: Tue, 4 Jun 2024 16:38:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson@squebb.ca>
References: <20240528103329.784584-1-vitaly.lifshits@intel.com>
 <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
 <303a35e6-263e-42e4-9e1a-5e71f2eaabc8@intel.com>
 <65f2fdb3-a326-4ea4-8cca-9e2b07ae63a0@molgen.mpg.de>
 <90a0ab74-013d-468c-be92-b76113610a85@app.fastmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <90a0ab74-013d-468c-be92-b76113610a85@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Fix S0ix
 residency on Meteor Lake corporate systems
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Dear Mark,


Am 04.06.24 um 16:33 schrieb Mark Pearson:

> On Wed, May 29, 2024, at 7:23 AM, Paul Menzel wrote:

>> Am 29.05.24 um 13:13 schrieb Lifshits, Vitaly:
>>
>>> On 5/28/2024 1:43 PM, Paul Menzel wrote:
>>
>>>> Am 28.05.24 um 12:33 schrieb Vitaly Lifshits:
>>>>> From: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>>>>
>>>>> On vPro systems,the  configuration of the I219-LM to achieve power
>>>>
>>>> s/,the  /, the /
>>> Thank you for noticing it.
>>> I will fix it in a v2.
>>>
>>>>> gating and S0ix residency is split between the driver and the CSME FW.
>>>>> It was discovered that in some scenarios, where the network cable is
>>>>> connected and then disconnected, S0ix residency is not always reached.
>>>>
>>>> Disconnected at any point, or just during suspend?
>>> Yes, at any point.
>>>
>>>> Any URL to the reports?
>>> Yes, https://bugs.launchpad.net/sutton/+bug/2054657
>>
>> This page does not exist.
>>
>>       $ curl -I https://bugs.launchpad.net/sutton/+bug/2054657
>>       HTTP/1.1 404 Not Found
>>       Date: Wed, 29 May 2024 11:20:52 GMT
>>       Server: gunicorn
>>       […]
>>
>> Please reference the (working) URL in a Link: tag in the footer.
> 
> Unfortunately the URL is a private bug between Lenovo and Canonical -
> we hit the issue as we've been working on the Linux enablement for
> our 2024 platforms.

Thank you for the clarification.

> I can't make the bug publicly visible I'm afraid - too much internal
> code name/process in there. I don't think there will be a public
> report of the issue yet - because the platforms have only just been
> released. If it's useful I guess I can create a kernel.org bug to
> track against?
If all relevant information is in the commit message, then that’s not 
necessary. The private bug URL could still be mentioned, as it might be 
useful for those with access. It should only be clearly stated, that 
it’s not public. (Others have different opinion.)

>>>>> This was root-caused to a subset of I219-LM register writes that are not
>>>>> performed by the CSME FW. Therefore, the driver should perform these
>>>>> register writes on corporate setups, regardless of the CSME FW state.
>>>>
>>>> Is that documented somewhere?
>>> Only in an internal documentation.
>>
>> If you can, it’d be great if you summarized why this is triggered by
>> unplugging the network cable.
>>
>>>> Please add more information about the affected systems, and the test
>>>> environment (firmware versions, …).
>>> It is mentioned at the beginning of the commit, Meteorlake vPro systems.
>>
>> Please be more specific. If there is a Meteor Lake vPro system, where
>> this can *not* be reproduced, it’d be great to know the exact system you
>> tested this with. Meteor Lake has been released a long time ago, and not
>> remembering a lot of bug reports, I assume, it’s not always reproducible.
>>
>> (You missed to comment on my previous comments at the end.)
> 
> I can't comment on the technical details, but I can note that it's
> reproduced on multiple Lenovo Thinkpad Meteorlake platforms that have
> ethernet
> E14 G6, E16 G2, L14 G5, L16 G1, P14s G5, P16s G3 & P16v G2
> I think it's common to any Meteorlake platform - but I defer to the
> Intel folk on the specifics.
Adding these model names to the commit message would work for me.


Kind regards,

Paul
