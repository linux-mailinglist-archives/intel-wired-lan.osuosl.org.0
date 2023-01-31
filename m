Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011C68327B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 17:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E9AB60BCF;
	Tue, 31 Jan 2023 16:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E9AB60BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675182248;
	bh=f2v4+sPGL9dkAYIb7ql45+l+P/AwoN3V4HNo7WJQRlg=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aolTSo242Xw6pS2CjMzWjcxywU/AlMWoF1c61kbxGtjb10pW2MPJb4rL98kHw8szv
	 BVm6MRSUTYnqlqLbCdeZcQhDVLi7rZHuwfm9ehkhHHOpyjzxY8tvonXkmavaV9rDJs
	 enxBzxmEHIyJZxUxoY29GatqarQ09Lp3mI3oi3ccO+Uteoq8T7essWhV/bCX7BTHTP
	 Cr11dzc9JslqJjs1+b0QGnAFfgd5LQIGOzOHqbTASrLp7BA89NJtsRoi+o5j79fpOZ
	 AgD0T5E+E5hu/PWvdzKrkTkNHZS6/Ibrenxcda13o2/iWMmb3pixrwI6IAcYqd607O
	 YwtC9LhJmRs3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zea-5lrJIwSt; Tue, 31 Jan 2023 16:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6359E60BD9;
	Tue, 31 Jan 2023 16:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6359E60BD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7EB21BF34D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D301606F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D301606F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EeQRldOk1UQ4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 07:54:02 +0000 (UTC)
X-Greylist: delayed 00:29:38 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28B69605AC
Received: from mail.as397444.net (mail.as397444.net [69.59.18.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28B69605AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:54:02 +0000 (UTC)
Received: by mail.as397444.net with esmtpsa (TLS1.3) (Exim)
 (envelope-from <ntp-lists@mattcorallo.com>) id 1pMl07-006ggH-2m;
 Tue, 31 Jan 2023 07:24:19 +0000
Message-ID: <4fc70178-dea4-4b88-dc32-8774f977af27@bluematt.me>
Date: Mon, 30 Jan 2023 23:24:19 -0800
MIME-Version: 1.0
Content-Language: en-US
To: chrony-users@chrony.tuxfamily.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
From: Matt Corallo <ntp-lists@mattcorallo.com>
X-DKIM-Note: Keys used to sign are likely public at
 https://as397444.net/dkim/mattcorallo.com
X-DKIM-Note: For more info, see https://as397444.net/dkim/
X-Mailman-Approved-At: Tue, 31 Jan 2023 16:23:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=mattcorallo.com; s=1675149661; h=Subject:From:To:From:Subject:To:Cc:Cc:
 Reply-To:In-Reply-To:References;
 bh=tgnRMtOCuOy+bj3m5yX0q2KVkTG6QWubdZWE7pBcuHk=; b=PUfja+K0rNkXxLlotzeWg7lzjA
 /xGZ3bKAMhO8h7jW/Q9cpqD/blZvdQfuo0T7o+e+54wxlSHTFtNLgbVdkG5lic262/pHokV2sAyfW
 o/k1MezEiOehGlyvRD/Gc/PAsDj4XAjD1ItdPJRnr+Wd6OsHOh54s4mbAF58bH8A0uBmZQT1003Bv
 H1roKtmDsR1eMa72s83KDlQQTCz4CtFhsY4ejuXn/Hb0QfajW05gvdvG1rK25tX6h1vzsMdgB+Emh
 zMKbN54sgWOj6vv7rqKgxq8l24gWMfyhDwU8fgCLLuen7coMJ2YscI4/brUgSl8hxIs5SWsFXjZQe
 Xo1qgFOQ==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=clients.mail.as397444.net; s=1675149662; h=Subject:From:To:From:Subject:To:
 Cc:Cc:Reply-To:In-Reply-To:References;
 bh=tgnRMtOCuOy+bj3m5yX0q2KVkTG6QWubdZWE7pBcuHk=; b=Put/b8NDBHU33tx8dBCExuijxz
 kwZEHS80BTllWyPpTDmE3sdtY8YvDfIgeWo3zruzVMI/WVt1OunN/eqFJa/wXdkmO+d/ggq2oau/M
 gCI5mAmxvg86fuywIKYqkIxubCFnvPsasv89IX6AwEo7pTIEpX9mZ05VIgtJKGPe7Y4KHqYkRR6Ki
 p/bhfYg/xLdYNa31w0ymGoOHqsG1DMJXze0Ptw4bbR6yN0b3w9EvkruoxoaaaUAq2c0JBsBvEIWhZ
 Yt2oFfM8Lk4FJqb/jPgLSuGOPD3a1OyJH4X51Z+zsIOvfEz2fMq3uKzREoBfLCjUbLe2yCm/9NLix
 Nb7MWhgw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=mattcorallo.com header.i=@mattcorallo.com
 header.a=rsa-sha256 header.s=1675149661 header.b=PUfja+K0; 
 dkim=pass (2048-bit key) header.d=clients.mail.as397444.net
 header.i=@clients.mail.as397444.net header.a=rsa-sha256 header.s=1675149662
 header.b=Put/b8ND
Subject: [Intel-wired-lan] 5.10 -> 6.1 i211 second PPS pin on SDP-3 gone
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I have a device with two separate PPS time sources wired up to two of the Software Defined Pins on 
an Intel i211 NIC (ala https://blog.dan.drown.org/apu2-ntp-server-2/). This works great with chrony 
4.0 (and even better in 4.3, thanks!) on Linux 5.10.

However, I just tried to upgrade to 6.1 and the second PPS went silent. The testptp utility in the 
kernel tree shows the first pin working fine, but when I hook the fourth pin up to channel two (as 
chrony does as well), I get radio silence.

Matt
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
