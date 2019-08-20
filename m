Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CD895423
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 04:15:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E037722728;
	Tue, 20 Aug 2019 02:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n6-XvcqzltHJ; Tue, 20 Aug 2019 02:15:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 27E002271F;
	Tue, 20 Aug 2019 02:15:12 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37F001BF315
 for <intel-wired-lan@osuosl.org>; Tue, 20 Aug 2019 02:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31EEA86E89
 for <intel-wired-lan@osuosl.org>; Tue, 20 Aug 2019 02:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7HR1PNyjBYJP for <intel-wired-lan@osuosl.org>;
 Tue, 20 Aug 2019 02:15:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6552C86E82
 for <intel-wired-lan@osuosl.org>; Tue, 20 Aug 2019 02:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:Cc:
 To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yHIfmVa7TyF7rBtVClGTVhZ4bR0ujo8R65zsE00/jHg=; b=IGk2eMOiVuKSGeZHlhtAB8cvXd
 QU/Go1j7FEQkETChEGmZnKp+eI4mZsE7AH/reY2uNX0GCj0ZOwHNTCbLZyNKVg2mYjCmBKFMzUHxb
 6VYm0TqPxsjCBuO4qZ5fo7LLDLi/ppiLe+bU9io7EmCWtm8bGfuDY+Mg2hSSLwc7N1ZbkRLEvVxuN
 kRicV4qoum5QRKG+u5CvAfIVx3NXng5qyDjxPSnKM/eEeJUWfjQyRf9pvLinYjdmNrvtXfREu3KS5
 3D9fKUpaB/Y74+Hm3MJ5iK+deVcNHU9oWWf+p3rEKDEC9R9B6xzH+RLO99oVhVUErUSOEenn8BZUF
 mZe+dh2A==;
Received: from [::1] (port=34790 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>)
 id 1hztfq-00028s-OQ; Mon, 19 Aug 2019 22:15:02 -0400
MIME-Version: 1.0
Date: Tue, 20 Aug 2019 14:15:02 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>
In-Reply-To: <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
 <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
 <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
Message-ID: <f6b7b539ece1ba352c60c6dc976a3ce2@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1hztfq-00028s-OQ
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-07-19 13:02, I wrote:
> On 2019-07-19 12:40, I wrote:
>> FWIW, I added some extra logging around the new code.  I can confirm
>> that it does execute on link regain but doesn't actually enter the
>> loop in my problem case.  The pcim_state is 0x00080083 at the time.
>> So the e1000_phy_hw_reset is never actually called.  If I try changing
>> it to call that unconditionally, then it can't successfully establish
>> a link in the first place.
> 
> I added a call to e1000e_dump at the point of link regain, in hopes
> that it might shed more light.
[register dumps clipped]

Does anyone have any ideas about this?  Either towards further 
investigation or to a possible resolution?

This is at the point of hardware internals now, so I have no idea how to 
proceed in either area.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
