Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 507A28FBDCD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 23:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDF39413B4;
	Tue,  4 Jun 2024 21:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aMh_HkrBjMW0; Tue,  4 Jun 2024 21:09:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF489408E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717535354;
	bh=rAneEPoSvCBzevGsWX94X7FaQwC2BhVXq2VxgLqz60Y=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jYQCh3XHwgISdYYtBcRgkjKah4BW2CaH5iwfWX5Qh0A+0hycEDmeObDjDB30NAZPq
	 abM9/bxWPBpurTfH0QJeAnWha6I3aEDjk3NOjg0ubquye3pzKyt+71rWWFWm+le2LP
	 jku93O87+QrW7TTz4QxujeQqxuIlQtNAhQwUbVYNzrIfXP9mTHVEogLK+3o6H/LhiD
	 1M4WEN5QgpmGZTbV0CRFgX0KBR+GtYs8ju5U8Onw4uAgb2RLsHaMf+LGkIdSEWpyIw
	 W7MC9VRKTz04yuEY8XsdMx19hKjOq2GIiags0h1PqXWzMTFXT/zYy5v9GQS36GALAp
	 6zwL+nBuC2HHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF489408E4;
	Tue,  4 Jun 2024 21:09:14 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4828E1BF869
 for <intel-wired-lan@osuosl.org>; Tue,  4 Jun 2024 14:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 407B161094
 for <intel-wired-lan@osuosl.org>; Tue,  4 Jun 2024 14:41:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vTZC5LELaWgc for <intel-wired-lan@osuosl.org>;
 Tue,  4 Jun 2024 14:41:07 +0000 (UTC)
X-Greylist: delayed 439 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 04 Jun 2024 14:41:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB30461093
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB30461093
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.145;
 helo=fout2-smtp.messagingengine.com; envelope-from=mpearson@squebb.ca;
 receiver=<UNKNOWN> 
Received: from fout2-smtp.messagingengine.com (fout2-smtp.messagingengine.com
 [103.168.172.145])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB30461093
 for <intel-wired-lan@osuosl.org>; Tue,  4 Jun 2024 14:41:06 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id 2679F138012B;
 Tue,  4 Jun 2024 10:33:46 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Tue, 04 Jun 2024 10:33:46 -0400
X-ME-Sender: <xms:ySVfZuIIa5Q2U1qbTghrEXbVRwaAc7qVGSOrxkytGqZu6VwTZinTTw>
 <xme:ySVfZmLw2886aybHSTxKDJhkMfAzr0QiShdUWRtTdBpYhgzueWAtriKhI-nk5nPbu
 vyTTb30S1QYugPKS9M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelgedgjeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnsehsqhhuvggssgdrtggrqeenuc
 ggtffrrghtthgvrhhnpedvhfeghfevteevtdfgledvleeukedtheevteeiveejiedtjefh
 gfelieeihfffgeenucffohhmrghinheplhgruhhntghhphgrugdrnhgvthdpkhgvrhhnvg
 hlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhhpvggrrhhsohhnsehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:ySVfZuu9VajOHrEd3_D3UMCz1aMkATceev0zf7CwPm2kziABDFIPaA>
 <xmx:ySVfZjZrqtj_oeqC-c9qbIWHMWOEnjaMnw6fGkP9Fpo-lzcIY8JQ-w>
 <xmx:ySVfZlbu7ULz1Mk6F4DxPxd9DUaJPkRQdwuY7DQREisjLtqcLZ2OyA>
 <xmx:ySVfZvBang9Ph5YIgsbq2ivIt56LxeOkDtYtE_x9x0rXNGV_CPrK8Q>
 <xmx:yiVfZpEuPXjJxPkACEf8A4PbDjteQKBMlUbmyJI0Ihitva1ogbsDCSwh>
Feedback-ID: ic2b14614:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7F8A1C60097; Tue,  4 Jun 2024 10:33:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-497-g97f96844c-fm-20240526.001-g97f96844
MIME-Version: 1.0
Message-Id: <90a0ab74-013d-468c-be92-b76113610a85@app.fastmail.com>
In-Reply-To: <65f2fdb3-a326-4ea4-8cca-9e2b07ae63a0@molgen.mpg.de>
References: <20240528103329.784584-1-vitaly.lifshits@intel.com>
 <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
 <303a35e6-263e-42e4-9e1a-5e71f2eaabc8@intel.com>
 <65f2fdb3-a326-4ea4-8cca-9e2b07ae63a0@molgen.mpg.de>
Date: Tue, 04 Jun 2024 10:33:24 -0400
From: "Mark Pearson" <mpearson@squebb.ca>
To: "Paul Menzel" <pmenzel@molgen.mpg.de>,
 "Vitaly Lifshits" <vitaly.lifshits@intel.com>
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 04 Jun 2024 21:09:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1717511626;
 x=1717598026; bh=rAneEPoSvCBzevGsWX94X7FaQwC2BhVXq2VxgLqz60Y=; b=
 FLFpUA0w3VgMsRAtkr4T8W+D4lIm5Uw09p6ZnDhTZcC505mI5hSS7i9WxZFRI4n1
 8bPS2+Fvz53f2wLYk1B4I9MBbFtm6T4n4gPoOCuirJnS7xaAITKXoJoAD3MHZFSQ
 ZwD6bv03OqA2b8wo7sxFPQY8lRKCem+io+6WNRf7BHqnkOKJpTxm1k3CzSYek6ic
 PLw+T7WKAe5ZlsXKanJBNv+Um8OlEKlNbJB4rEiHCK40a0zo1ZWEmrc0yS1wW+Ce
 gVnMTqymwKWVkPh+sDR7SCpSum6qEL6oj6tKE1RnFODoz+A2V5ZQhcMSQ5HOZn+Q
 qwGisjB88cg1ZxJIY4EZHA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717511626; x=
 1717598026; bh=rAneEPoSvCBzevGsWX94X7FaQwC2BhVXq2VxgLqz60Y=; b=d
 pyMar4Agv+Cs/+fdq9GRCdoH/utRuwNbwN+qIwneu1MOm7cK1RecOlq5FdjiAKFN
 3mF1IKmxl18iNwx1zq78dND9YUpI9tft0Z20x0QuxaCixankN3BHyuxjpMLakcsR
 UTjFzd9Lek6ACEwWWVHoSlTarpAvJOBLGIhIpAUOFo8gh2cfLSUNH0jdaWoIYZ/u
 iBQVEL6MeMXL/ajy9qSFaXM/l02cI9CUfjEYH5K+m+uU/Ad8OqU94FTCKEwOSnUp
 q5pAeiFbc9MJIMJtTZj/WuDo0zH8/r6FuDmNzU6ox2KhKxWpHNgyPR53m2XtqGzy
 w1j+qjRIefN6gzjDdZ4Iw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=squebb.ca
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=squebb.ca header.i=@squebb.ca
 header.a=rsa-sha256 header.s=fm2 header.b=FLFpUA0w; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=dpyMar4A
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
Cc: intel-wired-lan@osuosl.org, Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul

On Wed, May 29, 2024, at 7:23 AM, Paul Menzel wrote:
> Dear Vitaly,
>
>
> Thank you for your reply.
>
> Am 29.05.24 um 13:13 schrieb Lifshits, Vitaly:
>
>> On 5/28/2024 1:43 PM, Paul Menzel wrote:
>
>>> Am 28.05.24 um 12:33 schrieb Vitaly Lifshits:
>>>> From: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>>>
>>>> On vPro systems,the=C2=A0 configuration of the I219-LM to achieve p=
ower
>>>
>>> s/,the=C2=A0 /, the /
>> Thank you for noticing it.
>> I will fix it in a v2.
>>
>>>> gating and S0ix residency is split between the driver and the CSME =
FW.
>>>> It was discovered that in some scenarios, where the network cable is
>>>> connected and then disconnected, S0ix residency is not always reach=
ed.
>>>
>>> Disconnected at any point, or just during suspend?
>> Yes, at any point.
>>
>>> Any URL to the reports?
>> Yes, https://bugs.launchpad.net/sutton/+bug/2054657
>
> This page does not exist.
>
>      $ curl -I https://bugs.launchpad.net/sutton/+bug/2054657
>      HTTP/1.1 404 Not Found
>      Date: Wed, 29 May 2024 11:20:52 GMT
>      Server: gunicorn
>      [=E2=80=A6]
>
> Please reference the (working) URL in a Link: tag in the footer.
>

Unfortunately the URL is a private bug between Lenovo and Canonical - we=
 hit the issue as we've been working on the Linux enablement for our 202=
4 platforms.
I can't make the bug publicly visible I'm afraid - too much internal cod=
e name/process in there.
I don't think there will be a public report of the issue yet - because t=
he platforms have only just been released.
If it's useful I guess I can create a kernel.org bug to track against?

>>>> This was root-caused to a subset of I219-LM register writes that ar=
e not
>>>> performed by the CSME FW. Therefore, the driver should perform these
>>>> register writes on corporate setups, regardless of the CSME FW stat=
e.
>>>
>>> Is that documented somewhere?
>> Only in an internal documentation.
>
> If you can, it=E2=80=99d be great if you summarized why this is trigge=
red by=20
> unplugging the network cable.
>
>>> Please add more information about the affected systems, and the test=20
>>> environment (firmware versions, =E2=80=A6).
>> It is mentioned at the beginning of the commit, Meteorlake vPro syste=
ms.
>
> Please be more specific. If there is a Meteor Lake vPro system, where=20
> this can *not* be reproduced, it=E2=80=99d be great to know the exact =
system you=20
> tested this with. Meteor Lake has been released a long time ago, and n=
ot=20
> remembering a lot of bug reports, I assume, it=E2=80=99s not always re=
producible.
>
> (You missed to comment on my previous comments at the end.)

I can't comment on the technical details, but I can note that it's repro=
duced on multiple Lenovo Thinkpad Meteorlake platforms that have ethernet
E14 G6, E16 G2, L14 G5, L16 G1, P14s G5, P16s G3 & P16v G2
I think it's common to any Meteorlake platform - but I defer to the Inte=
l folk on the specifics.

Mark (tech lead for Lenovo PC Linux team)
