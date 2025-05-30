Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4107ACB626
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Jun 2025 17:14:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E249A4065E;
	Mon,  2 Jun 2025 15:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WPKOGLQOJwoK; Mon,  2 Jun 2025 15:14:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80D1B40723
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748877291;
	bh=wgiR2SvdGPT0FctPuhZxP9Awtu48EU2gXh768x8Ho44=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xx9ELf/ZpcR/M+O/b/jPnDCMEgz6m3lGfBl0SJBHUP8L6ESjQHY2/YVC6TF69dJdp
	 ZqRvsmPl9RBTE3bQMdB9cZ4Dh1oneRwGyrWXurbigWc+PeMkkw6TKwiASgG/QeN98u
	 jYVvVClCCzK6+lLk7uhhGx1gcWj0XWBauYe2M+kTr/DH9z9ErQgbWgLIMglQvlvn6B
	 MYWjO5XiqrSIC0Qg4zRCp6QsDSYIuyYVz36ZQjbzj5i5xL/dUBDscyItsGfMSdYCQr
	 F/7XJmiVAHJOoqlxFySyj0PaqUUl5I9keNAG/LJNBQglt4L45BTrV1ZwBuPEGh6fVn
	 ztJSTu+OUPviA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80D1B40723;
	Mon,  2 Jun 2025 15:14:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 33CE7234
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 21:07:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A45441992
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 21:07:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TX5O3IK3ql5p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 21:07:34 +0000 (UTC)
X-Greylist: delayed 552 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 30 May 2025 21:07:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1E73E4198A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E73E4198A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=69.59.18.99;
 helo=mail.as397444.net; envelope-from=aidsbfgwh@mattcorallo.com;
 receiver=<UNKNOWN> 
Received: from mail.as397444.net (mail.as397444.net [69.59.18.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E73E4198A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 21:07:33 +0000 (UTC)
X-DKIM-Note: Keys used to sign are likely public at
X-DKIM-Note: https://as397444.net/dkim/mattcorallo.com and
X-DKIM-Note: https://as397444.net/dkim/clients.mail.as397444.net
X-DKIM-Note: For more info, see https://as397444.net/dkim/
Received: by mail.as397444.net with esmtpsa (TLS1.3) (Exim)
 (envelope-from <aidsbfgwh@mattcorallo.com>)
 id 1uL6nz-00Ght1-1x for intel-wired-lan@lists.osuosl.org;
 Fri, 30 May 2025 20:58:19 +0000
Message-ID: <aab0b2cd-d880-4072-b620-3e9fc205df10@mattcorallo.com>
Date: Fri, 30 May 2025 16:58:19 -0400
MIME-Version: 1.0
Content-Language: en-US
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
From: Matt Corallo <aidsbfgwh@mattcorallo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 02 Jun 2025 15:14:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=mattcorallo.com; s=1748637663; h=Subject:From:To:From:Subject:To:Cc:Cc:
 Reply-To:In-Reply-To:References;
 bh=wgiR2SvdGPT0FctPuhZxP9Awtu48EU2gXh768x8Ho44=; b=DTHZ46p1kQGgmu9bMlITRMQAv7
 kTzlFk4JytAKS3W5sKYTUFmCUSEFDQXiXDnM0BVaFJodXB4njMeC6xId5eg/IW604Sc0KboUnJIJ/
 l/k58nigvjt6RWhdAqroa1l0F88Inr1+Z1ZJIKjkD2NBBV2qxjVS3cEYcb/0bVu5d55YwwLN/LCvO
 2pny873nsV1KHSD13ItcSVzWFVedY8X4PqqKr3Jn5Psbo76dz4BlW4avpnj83E029syCYHMrG0T6B
 wbHhNijfuLafDb9Ykc2nCVHAIaNx6lcAhaoVd4LU184txQU4PFJKyoEVfFtLGc/jYLEHuKtghNsvA
 wfzDIkUQ==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=clients.mail.as397444.net; s=1748637665; h=Subject:From:To:From:Subject:To:
 Cc:Cc:Reply-To:In-Reply-To:References;
 bh=wgiR2SvdGPT0FctPuhZxP9Awtu48EU2gXh768x8Ho44=; b=kpzFH4Tvgpd0hq6MtizsHdln1T
 1TF2Ho/CboJ0/OG5Ko0eScrxnv/GMMNUE/2SnYVG4YRQuvnUORhTM8tZm9o0wtb2AKuX1258xQ8/E
 S1gJLcJiecx64Ak0Oer97UsVLIUIcRLLh33x/QtYQwVzNZdeL+S1dU29Sp+wItp2O5AFuvBnoeAOg
 kWxQl+CxEiYXfV9RdYSdDtrqpX7MHszgq2GoWk4sKbRqOCE2WuX1FSedXySqquPatyZZXgW9yggCW
 0nsxOIeEkkF9kI308ejq0vNp2yd/eWgLICaNAqMPhKJucjpAl/kWxhYqMQ7JnaByxlbVf1iMqnmFj
 o9pY5zTQ==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mattcorallo.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=mattcorallo.com
 header.i=@mattcorallo.com header.a=rsa-sha256 header.s=1748637663
 header.b=DTHZ46p1; 
 dkim=pass (2048-bit key,
 unprotected) header.d=clients.mail.as397444.net
 header.i=@clients.mail.as397444.net header.a=rsa-sha256 header.s=1748637665
 header.b=kpzFH4Tv
Subject: [Intel-wired-lan] [ixgbe] No link after 6.8 -> 6.12 upgrade
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

After upgrading from 6.1 (Debian stable) to 6.12.22 (Debian trixie), I no longer get any link on a 
dual-82599ES SFP+ link (without changing the SFP+ cables or the switch firmware on the other end). I 
also have nearly-identical hardware that has had no problem with 6.8 (Proxmox/Ubuntu kernel line). 
There aren't any errors([1]), but I get NO-CARRIER [2], but the SFP+ is detected [3]. I don't seem 
to be the only one seeing similar issues with newer kernels in ixgbe, see [4] and [5].

Please leave me CC'd, not subscribed to intel-wired-lan.

Thanks
Matt

[1]

[2270478.254450] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
[2270478.254453] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[2270478.414084] ixgbe 0000:01:00.0: Multiqueue Enabled: Rx Queue count = 12, Tx Queue count = 12 
XDP Queue count = 0
[2270478.414383] ixgbe 0000:01:00.0: 32.000 Gb/s available PCIe bandwidth (5.0 GT/s PCIe x8 link)
[2270478.414468] ixgbe 0000:01:00.0: MAC: 2, PHY: 14, SFP+: 3, PBA No: FFFFFF-0FF
[2270478.414470] ixgbe 0000:01:00.0: 98:b7:85:01:c7:64
[2270478.415358] ixgbe 0000:01:00.0: Intel(R) 10 Gigabit Network Connection
[2270478.416690] ixgbe 0000:01:00.0 enp1s0f0: renamed from eth0
[2270478.578144] ixgbe 0000:01:00.1: Multiqueue Enabled: Rx Queue count = 12, Tx Queue count = 12 
XDP Queue count = 0
[2270478.578438] ixgbe 0000:01:00.1: 32.000 Gb/s available PCIe bandwidth (5.0 GT/s PCIe x8 link)
[2270478.578521] ixgbe 0000:01:00.1: MAC: 2, PHY: 14, SFP+: 4, PBA No: FFFFFF-0FF
[2270478.578523] ixgbe 0000:01:00.1: 98:b7:85:01:c7:65
[2270478.579428] ixgbe 0000:01:00.1: Intel(R) 10 Gigabit Network Connection
[2270478.581936] ixgbe 0000:01:00.1 enp1s0f1: renamed from eth0
[2270504.653197] ixgbe 0000:01:00.0: registered PHC device on enp1s0f0
[2270504.762149] 8021q: adding VLAN 0 to HW filter on device enp1s0f0
[2270504.833118] ixgbe 0000:01:00.0 enp1s0f0: detected SFP+: 3

[2]

ip link show enp1s0f0
44: enp1s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN mode DEFAULT group 
default qlen 1000
     link/ether 98:b7:85:01:c7:64 brd ff:ff:ff:ff:ff:ff
     altname enx98b78501c764

[3]

ethtool -m enp1s0f0
	Identifier                                : 0x03 (SFP)
	Extended identifier                       : 0x04 (GBIC/SFP defined by 2-wire interface ID)
	Connector                                 : 0x21 (Copper pigtail)
	Transceiver codes                         : 0x00 0x00 0x00 0x00 0x00 0x04 0x00 0x00 0x00
	Transceiver type                          : Passive Cable
	Encoding                                  : 0x00 (unspecified)
	BR Nominal                                : 10300MBd
	Rate identifier                           : 0x00 (unspecified)
	Length (SMF)                              : 0km
	Length (OM2)                              : 0m
	Length (OM1)                              : 0m
	Length (Copper or Active cable)           : 1m
	Length (OM3)                              : 0m
	Passive Cu cmplnce.                       : 0x01 (SFF-8431 appendix E [SFF-8472 rev10.4 only])
	Vendor name                               : OEM
	Vendor OUI                                : 00:00:00
	Vendor PN                                 : CAB-10GSFP-P1M
	Vendor rev                                : 01
	Option values                             : 0x00 0x00
	BR margin max                             : 0%
	BR margin min                             : 0%
	Vendor SN                                 : S220101710852
	Date code                                 : 22011000


[4] https://www.reddit.com/r/debian/comments/1d6sytn/interface_state_down_with_cable_plugged_in/
[5] 
https://www.reddit.com/r/linuxquestions/comments/1d4tagr/intel_x553_sfp_link_dies_when_turned_up_works/
