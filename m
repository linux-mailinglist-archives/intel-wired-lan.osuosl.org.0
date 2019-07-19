Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E80306D81B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 03:02:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC01D20000;
	Fri, 19 Jul 2019 01:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w+A1etNg1JsD; Fri, 19 Jul 2019 01:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6D44228D5;
	Fri, 19 Jul 2019 01:02:13 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C624F1BF9B9
 for <intel-wired-lan@osuosl.org>; Fri, 19 Jul 2019 01:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BEDE58791F
 for <intel-wired-lan@osuosl.org>; Fri, 19 Jul 2019 01:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6++OT87VLK26 for <intel-wired-lan@osuosl.org>;
 Fri, 19 Jul 2019 01:02:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA33B878FE
 for <intel-wired-lan@osuosl.org>; Fri, 19 Jul 2019 01:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:Cc:
 To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TxP2qqO0d5GOOU0TSHoiDVvWPw27SJJfvXK44lOSxxI=; b=sJ2QpNXUhhNEnXGdDMBYqCFYm5
 1YE4IPAA0/sCHBiUy5Am5iIqOho3yYqNjlzDqhB6JjDpUXQIGsgGb9v+zTGa/+RH+aUxN+aZcB4zE
 M496pIKm9rGrWn8MQ42h29fRblCS7XLwlotFl4XhPx5v3aeECJacsTeBXH93XNjQ7HFgND3oppqPf
 xWw0vSDkXmmj4fIa5yL+3KKaiGQRq+pxamWeVZXrOn8Zmx3oy2tDNJikih3k4WZckGIwYStHRLx5G
 /SOYePCyhOsicY45w6G0lcpohQcGj9mbB1zh7RUC+/u++2C6LY9wMbPA6K4v3tP5q0G3if5NX8/Ks
 NzjMlGpw==;
Received: from [::1] (port=47862 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>)
 id 1hoHHk-0000DR-7s; Thu, 18 Jul 2019 21:02:08 -0400
MIME-Version: 1.0
Date: Fri, 19 Jul 2019 13:02:08 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>
In-Reply-To: <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
 <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
Message-ID: <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1hoHHk-0000DR-7s
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

On 2019-07-19 12:40, I wrote:
> FWIW, I added some extra logging around the new code.  I can confirm
> that it does execute on link regain but doesn't actually enter the
> loop in my problem case.  The pcim_state is 0x00080083 at the time.
> So the e1000_phy_hw_reset is never actually called.  If I try changing
> it to call that unconditionally, then it can't successfully establish
> a link in the first place.

I added a call to e1000e_dump at the point of link regain, in hopes that 
it might shed more light.

On startup, when it does successfully link and send/receive packets:

     0000:00:1f.6: Register Dump
       Register Name   Value
      CTRL            58180240
      STATUS          00080083
      CTRL_EXT        995a1027
      ICR             00000000
      RCTL            04008002
      RDLEN           00001000
      RDH             00000000
      RDT             000000f0
      RDTR            00000000
      RXDCTL[0-1]     00010000 00010000
      ERT             00000000
      RDBAL           6061c000
      RDBAH           00000002
      RDFH            00000000
      RDFT            00000000
      RDFHS           00000000
      RDFTS           00000000
      RDFPC           00000000
      TCTL            3103f0f8
      TDBAL           5e8a0000
      TDBAH           00000002
      TDLEN           00001000
      TDH             00000000
      TDT             00000000
      TIDV            00000008
      TXDCTL[0-1]     0141001f 0141001f
      TADV            00000020
      TARC[0-1]       3d800403 45000403
      TDFH            00000d00
      TDFT            00000d00
      TDFHS           00000d00
      TDFTS           00000d00
      TDFPC           00000000
      ecm0 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx

On disconnecting and reconnecting the cable, when it does get link but 
then can't actually send any packets:

     0000:00:1f.6: Register Dump
       Register Name   Value
      CTRL            58180240
      STATUS          00080083
      CTRL_EXT        995a1027
      ICR             00000000
      RCTL            04008002
      RDLEN           00001000
      RDH             000000d1
      RDT             000000c0
      RDTR            00000000
      RXDCTL[0-1]     00010000 00010000
      ERT             00000000
      RDBAL           6061c000
      RDBAH           00000002
      RDFH            00000582
      RDFT            00000582
      RDFHS           00000582
      RDFTS           00000582
      RDFPC           00000000
      TCTL            3103f0fa
      TDBAL           5e8a0000
      TDBAH           00000002
      TDLEN           00001000
      TDH             00000050
      TDT             0000003d
      TIDV            00000008
      TXDCTL[0-1]     0141001f 0141001f
      TADV            00000020
      TARC[0-1]       3d800403 45000403
      TDFH            00000f0a
      TDFT            00000f1c
      TDFHS           00000f0a
      TDFTS           00000f0a
      TDFPC           00000000
      ecm0 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
