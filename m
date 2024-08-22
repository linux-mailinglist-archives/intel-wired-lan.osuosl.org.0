Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB1C95AF8E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 09:45:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57BD540C28;
	Thu, 22 Aug 2024 07:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id isGejLdO1_YR; Thu, 22 Aug 2024 07:44:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F25AE40C22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724312697;
	bh=y3v3IIFARTszfLWu7n/j8Du29EOi4VTxMDP3GF4qp7E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sg7hA1k0PHGX/v2sNpb1keV5aUnDUi3iaj4CcB6asPOkl4NutVTTRj6tpJBLBLIo6
	 AY1l7DI36as6qdgzde0/F2eJEm8fqcU2xyGrtvTJxWUzT/gDohx0ELyCUukQZvcUHo
	 /Gx3LkCr/PagA2hpZhYneiWApwlq40eUXHY1VM1cX8Is7uuJYC43rEzfGaTgrApNzp
	 yEyaUY9ShB0GmFWzUNhZuN85bB7nq/KQk+qCN1XgW3IurFx+WlbN36xeaAXE4OnMdZ
	 jhrn51DeM1vEjAjwpdvRLrEng+KTpunv/SmfihUAzuQTL/eosNilcLZtUP7Xj+ZVbt
	 Y/E5yVm9VqpfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F25AE40C22;
	Thu, 22 Aug 2024 07:44:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81E351BF322
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 07:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79A0C80A82
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 07:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m9sJJpu9kR7y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 07:44:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=136.143.188.52;
 helo=sender4-of-o52.zoho.com; envelope-from=petr@jevklidu.cz;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3674B80A59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3674B80A59
Received: from sender4-of-o52.zoho.com (sender4-of-o52.zoho.com
 [136.143.188.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3674B80A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 07:44:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1724312671; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=B0wnUG3UHEcTRfbjC9HSfLJG+WBnpU18yag7r0240QuMQMnP/cHcj9e4oJU2FgxRPLpt6OGnlZOiPNE2GUFgnkBzKBPwzxb7eTHFwW4P8cW+1IrIOQ6jZWd2rhOIyWcRKYMydfCbMPM04Z+RwKVyRlrLTYL5UDBYYKKHOG08Ikc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1724312671;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=y3v3IIFARTszfLWu7n/j8Du29EOi4VTxMDP3GF4qp7E=; 
 b=VvZAc/xKVy85rZpNNCAwUwpxquk4r4Xw2QjZmePGlnINwOvJf6oilR9lqx2WDMezV20iKTW9f3dauO4jIjp363HOdh7P21UFfa66a0oK63RODo7IQMHSCqaCwAEoO1PKHfDfTMwz0/BShU1dt+nhtAeSeKwbG7G1qizCcoXTdjo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=jevklidu.cz;
 spf=pass  smtp.mailfrom=petr@jevklidu.cz;
 dmarc=pass header.from=<petr@jevklidu.cz>
Received: by mx.zohomail.com with SMTPS id 1724312669862808.3168476405893;
 Thu, 22 Aug 2024 00:44:29 -0700 (PDT)
Message-ID: <5ba3c7c2-5695-421d-a747-2a23af48db26@jevklidu.cz>
Date: Thu, 22 Aug 2024 09:44:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Hui Wang <hui.wang@canonical.com>
References: <20240821145959.GA248604@bhelgaas>
 <1041b9b5-cc78-13b1-459a-d1d3a313475a@intel.com>
Content-Language: cs-CZ, en-US
From: Petr Valenta <petr@jevklidu.cz>
In-Reply-To: <1041b9b5-cc78-13b1-459a-d1d3a313475a@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1724312671; 
 s=zoho; d=jevklidu.cz; i=petr@jevklidu.cz;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=y3v3IIFARTszfLWu7n/j8Du29EOi4VTxMDP3GF4qp7E=;
 b=RSnIQpqoQp2O3ExJNnw4fk9dlt8CX1T5sbtB6GflBDYejiRQJTcrU3zRHn3pRkFq
 tm00/cgXr6pF6T5vJFttBkfrHtnRiPiE8cjqni5KsNxCyOXOwri6I5ARAmPcUj42eda
 e/xHQX9E3ayXrWSBQDAsun3Ann63tcXQKwlT7ffI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jevklidu.cz
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=jevklidu.cz header.i=petr@jevklidu.cz
 header.a=rsa-sha256 header.s=zoho header.b=RSnIQpqo
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "Rafael J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Jiri Slaby <jirislaby@kernel.org>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Dne 21. 08. 24 v 17:17 Vitaly Lifshits napsal(a):
> 
> On 8/21/2024 5:59 PM, Bjorn Helgaas wrote:
>> [+to Dima, Vitaly, Hui; beginning of thread at
>> https://lore.kernel.org/r/60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org]
>>
>> On Wed, Aug 21, 2024 at 01:39:11PM +0200, Petr Valenta wrote:
>>> Dne 20. 08. 24 v 23:30 Bjorn Helgaas napsal(a):
>>>> On Tue, Aug 20, 2024 at 11:13:54PM +0200, Petr Valenta wrote:
>>>>> Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
>>>>>> On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
>>>>>>> On 19. 08. 24, 6:50, Jiri Slaby wrote:
>>>>>>>> CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
>>> ...
>>>> I'm at a loss.  You could try reverting the entire b2c289415b2b commit
>>>> (patch for that is below).
>>> This patch didn't help, so I reverted it back.
>>>
>>>> If that doesn't help, I guess you could try reverting the other
>>>> commits Jiri mentioned:
>>>>
>>>>     76a0a3f9cc2f e1000e: fix force smbus during suspend flow
>>>>     c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
>>>>     bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp function
>>>>     6918107e2540 net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates
>>>>     1eb2cded45b3 net: annotate writes on dev->mtu from ndo_change_mtu()
>>>>     b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
>>>>     75a3f93b5383 net: intel: implement modern PM ops declarations
>>>>
>>>> If you do this, I would revert 76a0a3f9cc2f, test, then revert
>>>> c93a6f62cb1b in addition, test, then revert bfd546a552e1 in addition,
>>>> etc.
>>> I have created revert patches like this:
>>> git format-patch --stdout -1 76a0a3f9cc2f | interdiff -q /dev/stdin \
>>> /dev/null > revert_76a0a3f9cc2f.patch
>>>
>>> I have applied revert_76a0a3f9cc2f.patch (rebuild and tested), then in
>>> addition revert_c93a6f62cb1b.patch and after applying
>>> revert_bfd546a552e1.patch irq storm didn't appear.
>>>
>>> I have tested it with 3 subsequent reboots and in all those cases it was ok.
>> Thanks for all this testing.  It sounds like reverting all three of
>> 76a0a3f9cc2f, c93a6f62cb1b, and bfd546a552e1 fixed the IRQ storm, but
>> I'm not clear on the results of other situations.
>>
>> It looks like c93a6f62cb1b could be reverted by itself because it's
>> unrelated to 76a0a3f9cc2f and bfd546a552e1.  I added the authors of
>> all three in case they have any insights.
>>
>> Bjorn
> 
> 
> I doubt that it is related to c93a6f62cb1b, I believe that is more 
> probable to be related to the two other patches.
> 
> Apart from what I suggested in the other mailing thread (enabling e1000e 
> debug and to test if it happens with a cable connected),
> 
> I suggest to try to apply this patch and see if it fixes the issue:
> 
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240806132348.880744-1-vitaly.lifshits@intel.com/

I have applied patch from link above and command bellow really doesn't 
start irq storm.

echo 'auto' > /sys/bus/pci/devices/0000:00:1f.6/power/control

Problem is that after executing this command and plugging cable to 
ethernet port, kernel is not able to detect link (LED indicate link is 
on) so network over cable is not working.

> 
> 
