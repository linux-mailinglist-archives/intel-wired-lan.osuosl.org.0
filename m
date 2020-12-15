Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B648E2DAD18
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 13:26:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 686002036D;
	Tue, 15 Dec 2020 12:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LBTWsuCUWD0c; Tue, 15 Dec 2020 12:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 55B0020554;
	Tue, 15 Dec 2020 12:26:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF2C01BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AAAF387094
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtpxKOAdOm1a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 12:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A10E48704C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608035194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p2PFWOUp6BsVeZRIR5zjR2a20420Yo7fOz47E9bHmR0=;
 b=aphvdI4FBnvqL1y8VjiR4/27OBm3ZC5mjwI9+yeLt9sqWCBaEkP/XxtFcYg0dVRqXjFDVw
 T4Kn2nRNngJ9UfO417SCPcB7QWpzMn/E1wXPtj4DMtwA/FS9n6mp1KaCucbX6ClgEa11vV
 8LDcE+1EkBTi/qZ2FN0Ejgkg34APZOo=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-90LJ0nZaPbS3fRg9XHOdDA-1; Tue, 15 Dec 2020 07:26:30 -0500
X-MC-Unique: 90LJ0nZaPbS3fRg9XHOdDA-1
Received: by mail-ed1-f70.google.com with SMTP id e12so9880397eds.19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 04:26:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=p2PFWOUp6BsVeZRIR5zjR2a20420Yo7fOz47E9bHmR0=;
 b=RXk1qu/IP3c1sT1pDj3+nUoLqGV33NN0Ya2p0TyDkV6RWzR76OEvLzWHCjT3oJtuvF
 jTqkfYEm/tY8O1kqRgSpj6wKwz4yo/MeGPMZAHb2TNX1xPbf9FxiXYNZNUSRjwzhRIg1
 nXmTmgdzk76k1nPp6YCJFCHBcK9dss4SwsOG9YbGMnTqP+2l2SxBs1Myx9Hz+q/oZ3AN
 KOhoeMYzuCSC9EVhAB4bh4OZFOlD76apfO6Zwl9DxfQj+TRpxB1Bhjc6becp66FQw9W3
 GY+JXFib1shrPmupsHeIJ7ZnmoZ9CZwNa7b+P6WLDMMs/MFP6M4I62gXC/DVJrue3Tx5
 4avQ==
X-Gm-Message-State: AOAM530iXUizo6o3I8bJROsbXJbI/NrdKLZV/H2nQfX/MPdr4NMyjn7E
 E791+HPKf2NF5IzunIZXzELcwFPJP+kPAGplssQfK3+UlfyfHX9wwJwxteKgvKSK09uSy+uguM1
 ruUT+gmn+nZ0KMeIUOJaRzImogweUPg==
X-Received: by 2002:a05:6402:2292:: with SMTP id
 cw18mr29573402edb.336.1608035189418; 
 Tue, 15 Dec 2020 04:26:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzBYKFs3TYtfdNXbnJTsoorusE8rhPx4MUeNvFWOrHdRsAheOVW0szXft9iKrTV55Mu97NNwA==
X-Received: by 2002:a05:6402:2292:: with SMTP id
 cw18mr29573371edb.336.1608035189103; 
 Tue, 15 Dec 2020 04:26:29 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id s26sm17870347edc.33.2020.12.15.04.26.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Dec 2020 04:26:28 -0800 (PST)
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, Aaron Ma <aaron.ma@canonical.com>,
 Mark Pearson <mpearson@lenovo.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
 <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
 <MN2PR19MB26376EA92CE14DC3ADD328BEFAC70@MN2PR19MB2637.namprd19.prod.outlook.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1f68c6a4-3dcf-47fa-d3c2-679d1f7c4823@redhat.com>
Date: Tue, 15 Dec 2020 13:26:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <MN2PR19MB26376EA92CE14DC3ADD328BEFAC70@MN2PR19MB2637.namprd19.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 0/4] Improve s0ix flows for systems
 i219LM
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
Cc: Netdev <netdev@vger.kernel.org>, "Yuan, Perry" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>, "Shen,
 Yijun" <Yijun.Shen@dell.com>, Jakub Kicinski <kuba@kernel.org>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 12/14/20 8:36 PM, Limonciello, Mario wrote:
>> Hi All,
>>
>> Sasha (and the other intel-wired-lan folks), thank you for investigating this
>> further and for coming up with a better solution.
>>
>> Mario, thank you for implementing the new scheme.
>>
> 
> Sure.
> 
>> I've tested this patch set on a Lenovo X1C8 with vPRO and AMT enabled in the
>> BIOS
>> (the previous issues were soon on a X1C7).
>>
>> I have good and bad news:
>>
>> The good news is that after reverting the
>> "e1000e: disable s0ix entry and exit flows for ME systems"
>> I can reproduce the original issue on the X1C8 (I no longer have
>> a X1C7 to test on).
>>
>> The bad news is that increasing the timeout to 1 second does
>> not fix the issue. Suspend/resume is still broken after one
>> suspend/resume cycle, as described in the original bug-report:
>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1865570
>>
>> More good news though, bumping the timeout to 250 poll iterations
>> (approx 2.5 seconds) as done in Aaron Ma's original patch for
>> this fixes this on the X1C8 just as it did on the X1C7
>> (it takes 2 seconds for ULP_CONFIG_DONE to clear).
>>
>> I've ran some extra tests and the poll loop succeeds on its
>> first iteration when an ethernet-cable is connected. It seems
>> that Lenovo's variant of the ME firmware waits up to 2 seconds
>> for a link, causing the long wait for ULP_CONFIG_DONE to clear.
>>
>> I think that for now the best fix would be to increase the timeout
>> to 2.5 seconds as done in  Aaron Ma's original patch. Combined
>> with a broken-firmware warning when we waited longer then 1 second,
>> to make it clear that there is a firmware issue here and that
>> the long wait / slow resume is not the fault of the driver.
>>
> 
> OK.  I've submitted v5 with this suggestion.
> 
>> ###
>>
>> I've added Mark Pearson from Lenovo to the Cc so that Lenovo
>> can investigate this issue further.
>>
>> Mark, this thread is about an issue with enabling S0ix support for
>> e1000e (i219lm) controllers. This was enabled in the kernel a
>> while ago, but then got disabled again on vPro / AMT enabled
>> systems because on some systems (Lenovo X1C7 and now also X1C8)
>> this lead to suspend/resume issues.
>>
>> When AMT is active then there is a handover handshake for the
>> OS to get access to the ethernet controller from the ME. The
>> Intel folks have checked and the Windows driver is using a timeout
>> of 1 second for this handshake, yet on Lenovo systems this is
>> taking 2 seconds. This likely has something to do with the
>> ME firmware on these Lenovo models, can you get the firmware
>> team at Lenovo to investigate this further ?
>>
> 
> Please be very careful with nomenclature.  AMT active, or AMT capable?
> The goal for this series is to support AMT capable systems with an i219LM
> where AMT has not been provisioned by the end user or organization.
> OEMs do not ship systems with AMD provisioned.

Ah, sorry about that. What I meant with "active" is set to "Enabled"
in the BIOS.

Also FWIW I just tried disabling AMT in the BIOS (using the "Disabled"
option, not the "Permanently Disabled" option) on the Lenovo X1 Carbon
8th gen, but that does not make a difference.

It still takes 2 seconds for ULP_CONFIG_DONE to clear even with AMT
set to "Disabled" in the BIOS :|

Regards,

Hans


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
