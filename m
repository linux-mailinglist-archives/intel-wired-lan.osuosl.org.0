Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4027B8616
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 19:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E29B2400E5;
	Wed,  4 Oct 2023 17:04:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E29B2400E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696439089;
	bh=TJ6F8WbT+MMhUzlqJgH1sgyi0FbecaAnyb9Q0v9TGPo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=phsUfOU7hJNzTH7ZqGIGOzwxEjXx/FWHzZdoIdku3NSM40yf1DjFBdtb9dbMMhRCA
	 DkDuvYCtqCg6n+n+ZV5Mapsx2eaJObX5VGLX+3bFHY6kR5TPxV+72Le1bzKFZsYxqd
	 kPc8q9sZ0oH5cLJBYxt/hC3s1mgNDfnv9gmPNqmxxYnIlQXpxCydy8INIw8mnxhiGG
	 P2ejt6/SGn6mz4O5Oj7h8YoJiNxre/Uwj49MIOK5HCRHUYbAYTWeEjZGLXcPpjUzab
	 jO1tsky1nMS73/fsJV/75wuQ616gdXhAD5DdBZtbTZLRS8K2KqOukn4YbsJVsD4fgS
	 sIcftRa9wB0lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxnNCGNb269R; Wed,  4 Oct 2023 17:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F6A7417C8;
	Wed,  4 Oct 2023 17:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F6A7417C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 856941BF38D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AD9F417C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:04:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AD9F417C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXqApbwv_5ap for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 17:04:40 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F28E04035A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F28E04035A
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id B53663200A78;
 Wed,  4 Oct 2023 13:04:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Wed, 04 Oct 2023 13:04:39 -0400
X-ME-Sender: <xms:JZsdZZ0PeAhJSILNLY53y3U5tndjG9TV4wF1X9j5bKOXxCKNkPZ3tQ>
 <xme:JZsdZQHQ10tIR5ktg_Brkoshp8eW9QS3iNMu-beRzb5ihaaSb1na8kJRiuRD_4jGz
 Apv_lC-gYyo1C6uXmA>
X-ME-Received: <xmr:JZsdZZ7OEMY9TTexsAkbteMtyYrzuUiyYgyWLr0Bxs1SvkUpn80KtCIPD67-3wJBUgnDwa_rYOEtl4ctx-63BXVjv4egdFVWCS4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrgedvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurheptgfkffggfgfuvfevfhfhjgesrgdtreertddvjeenucfhrhhomhepufhkhihl
 vghrucfomohnthihshgrrghrihcuoehsmhdolhhishhtshesshhkhihmrdhfiheqnecugg
 ftrfgrthhtvghrnhepteeggfejgfeftdeileeutdffheejvdeuudeukeegteegfeegieej
 gfduteekhfdtnecuffhomhgrihhnpehvhihoshdrihhonecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepshhmodhlihhsthhssehskhihmhdrfhhi
X-ME-Proxy: <xmx:JZsdZW1ZVTFDFUz6Agu6GO3B5eqTyTT0gbw5NfE6HPQEzM0vrSbl0g>
 <xmx:JZsdZcHFbuIhJGwQZS0jC3lNSJHYUHDj5xJIsdjqIPLTIG6bCX6DHQ>
 <xmx:JZsdZX81qBtTcW3KhnOUTk6qY5sXeG4vFjGkpoHalxWy9QYrGLuecA>
 <xmx:JpsdZWNFoxkjMUe-T9zlQ05o53FpYIAckHEvmygtlnzCCPig_So0Ww>
Feedback-ID: i1cc947c0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Oct 2023 13:04:36 -0400 (EDT)
Message-ID: <9667a2af-45f2-4aad-a648-31602d3d4a84@skym.fi>
Date: Wed, 4 Oct 2023 20:04:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
In-Reply-To: <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1696439078; x=1696525478; bh=Fe
 EAE7IaVr3bxersraaTp9aSZLuJwthw7XAg8WdbJYw=; b=CDAYQMl+jYIqiKiu7A
 LQ1S0LBW++X5ybz/YZ+gG7eTdU30euA/RLAZdWSYw952ophwqL6hAqZhmaZWB4nA
 XmzjT1Ib6X/nk9h5pgZUQ05PVNj+aOSX/e1j6EiiyTm5G+52x8MU5YreopZkGjN2
 fwaRb+/UpQiNvQvpy1Oh4ebdsuLSGUTrHKHQr44mymM6odX4UKVsx2S4an1muCPC
 pRsXL8jGz3bl8CLSvnK9oyzUruWewFWd9Nawy5FnM4VBfFtohWNtMfeDKzo57J/R
 ubuhqH/Dx2Rjarc1Vjr9/waYbTZ00kiBozu1Nc1cLfYLmYQjnjhBn1+attQ+wblD
 x/Kw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1696439078; x=1696525478; bh=FeEAE7IaVr3bx
 ersraaTp9aSZLuJwthw7XAg8WdbJYw=; b=VQQ8H3ZmyRx1Ke/vRor+9loGn2hvV
 pYo8paR+qAfWGebfEpfRSVnyF0oSLiUvaVI4WUl9eiV6mGfBP1tzIa3ZAfBU0Dhm
 i+62n25pIuWhdxdDoP4D+hNiW1AFFzVNukIKgXFgsrgzxj6UWTURSP1ccWlXj7qE
 dGkYOxnAWYWMDQiA6Kk1EQos086v5HNnewHhVKCJbgunoZ2HqgeeZ0JwqfpchNEQ
 cwjl1Q/ZhfDUgI3HZH7vOtrfB28j6YVC71ltFp/0O8inf8vipVZr6NrouiLSarso
 o+RxUEFhmt5q62eJxNZ9PAH0aXioVs9TFaCT8X3QeGs1n5o/yc6aI09kA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm3 header.b=CDAYQMl+; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=VQQ8H3Zm
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============0977105366234746719=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============0977105366234746719==
Content-Type: multipart/alternative;
 boundary="------------s9aqSPqS0oSG0D3c5FinjDVT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------s9aqSPqS0oSG0D3c5FinjDVT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

> On 10/3/2023 4:25 PM, Skyler Mäntysaari wrote:
>> Hi there,
>>
>> It seems that for reasons unknown to me, my Intel X533 based 10G SFP+ 
>> doesn't want to work with kernel 6.1.55 in VyOS 1.4 nor Debian 12 but 
>> it does in OPNsense which is based on FreeBSD 13.2.
>>
>> How would I go about debugging this properly? Both sides see light, 
>> but no link unless I'm using FreeBSD.
>
> have you tried setting the allow_unsupported_sfp=1 module parameter?
> parm:           allow_unsupported_sfp:Allow unsupported and untested 
> SFP+ modules on 82599-based adapters (bool) 

That's enabled by default on VyOS so yes, but it doesn't seem to be a 
problem that it wouldn't recolonize the module at all (and print a 
warning/error about it) but instead something else.

>> For reference the thread on VyOS forums regarding this: 
>> https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253
>
> Also, for troubleshooting it would be useful to have the output of 
> ethtool -m eth0 from your device. 

It was already provided in the VyOS forum thread, but here:

         Identifier                                : 0x03 (SFP)
         Extended identifier                       : 0x04 (GBIC/SFP 
defined by 2-wire interface ID)
         Connector                                 : 0x07 (LC)
         Transceiver codes                         : 0x10 0x00 0x00 0x00 
0x00 0x00 0x00 0x00 0x00
         Transceiver type                          : 10G Ethernet: 10G 
Base-SR
         Encoding                                  : 0x06 (64B/66B)
         BR, Nominal                               : 10300MBd
         Rate identifier                           : 0x02 (8/4/2G Rx 
Rate_Select only)
         Length (SMF,km)                           : 0km
         Length (SMF)                              : 0m
         Length (50um)                             : 80m
         Length (62.5um)                           : 30m
         Length (Copper)                           : 0m
         Length (OM3)                              : 300m
         Laser wavelength                          : 850nm
         Vendor name                               : FS
         Vendor OUI                                : 00:1b:21
         Vendor PN                                 : SFP-10GSR-85
         Vendor rev                                : A
         Option values                             : 0x00 0x3a
         Option                                    : RX_LOS implemented
         Option                                    : TX_FAULT implemented
         Option                                    : TX_DISABLE implemented
         Option                                    : RATE_SELECT implemented
         BR margin, max                            : 0%
         BR margin, min                            : 0%
         Vendor SN                                 : G2304040205
         Date code                                 : 230411
         Optical diagnostics support               : Yes
         Laser bias current                        : 6.640 mA
         Laser output power                        : 0.5481 mW / -2.61 dBm
         Receiver signal average optical power     : 0.6270 mW / -2.03 dBm
         Module temperature                        : 54.67 degrees C / 
130.40 degrees F
         Module voltage                            : 3.2896 V
         Alarm/warning flags implemented           : Yes
         Laser bias current high alarm             : Off
         Laser bias current low alarm              : Off
         Laser bias current high warning           : Off
         Laser bias current low warning            : Off
         Laser output power high alarm             : Off
         Laser output power low alarm              : Off
         Laser output power high warning           : Off
         Laser output power low warning            : Off
         Module temperature high alarm             : Off
         Module temperature low alarm              : Off
         Module temperature high warning           : Off
         Module temperature low warning            : Off
         Module voltage high alarm                 : Off
         Module voltage low alarm                  : Off
         Module voltage high warning               : Off
         Module voltage low warning                : Off
         Laser rx power high alarm                 : Off
         Laser rx power low alarm                  : Off
         Laser rx power high warning               : Off
         Laser rx power low warning                : Off
         Laser bias current high alarm threshold   : 13.000 mA
         Laser bias current low alarm threshold    : 4.000 mA
         Laser bias current high warning threshold : 12.500 mA
         Laser bias current low warning threshold  : 5.000 mA
         Laser output power high alarm threshold   : 1.0000 mW / 0.00 dBm
         Laser output power low alarm threshold    : 0.2512 mW / -6.00 dBm
         Laser output power high warning threshold : 0.7943 mW / -1.00 dBm
         Laser output power low warning threshold  : 0.3162 mW / -5.00 dBm
         Module temperature high alarm threshold   : 78.00 degrees C / 
172.40 degrees F
         Module temperature low alarm threshold    : -13.00 degrees C / 
8.60 degrees F
         Module temperature high warning threshold : 73.00 degrees C / 
163.40 degrees F
         Module temperature low warning threshold  : -8.00 degrees C / 
17.60 degrees F
         Module voltage high alarm threshold       : 3.7000 V
         Module voltage low alarm threshold        : 2.9000 V
         Module voltage high warning threshold     : 3.6000 V
         Module voltage low warning threshold      : 3.0000 V
         Laser rx power high alarm threshold       : 1.0000 mW / 0.00 dBm
         Laser rx power low alarm threshold        : 0.0100 mW / -20.00 dBm
         Laser rx power high warning threshold     : 0.7943 mW / -1.00 dBm
         Laser rx power low warning threshold      : 0.0158 mW / -18.01 dBm

For reference the other side's juniper does see light as can be seen in 
this post: 
https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253/11?u=samip537

- Skyler

--------------s9aqSPqS0oSG0D3c5FinjDVT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>
      <blockquote type="cite">On 10/3/2023 4:25 PM, Skyler Mäntysaari
        wrote:
        <br>
        <blockquote type="cite" style="color: #007cff;">Hi there,
          <br>
          <br>
          It seems that for reasons unknown to me, my Intel X533 based
          10G SFP+ doesn't want to work with kernel 6.1.55 in VyOS 1.4
          nor Debian 12 but it does in OPNsense which is based on
          FreeBSD 13.2.
          <br>
          <br>
          How would I go about debugging this properly? Both sides see
          light, but no link unless I'm using FreeBSD.
          <br>
        </blockquote>
        <br>
        have you tried setting the allow_unsupported_sfp=1 module
        parameter?
        <br>
        parm:           allow_unsupported_sfp:Allow unsupported and
        untested SFP+ modules on 82599-based adapters (bool)
      </blockquote>
      <br>
      That's enabled by default on VyOS so yes, but it doesn't seem to
      be a problem that it wouldn't recolonize the module at all (and
      print a warning/error about it) but instead something else.<br>
    </p>
    <p>
      <blockquote type="cite">
        <blockquote type="cite">For reference the thread on VyOS forums
          regarding this:
          <a class="moz-txt-link-freetext" href="https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253">https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253</a>
          <br>
        </blockquote>
        <br>
        Also, for troubleshooting it would be useful to have the output
        of ethtool -m eth0 from your device.
      </blockquote>
    </p>
    <p>It was already provided in the VyOS forum thread, but here:<br>
      <br>
              Identifier                                : 0x03 (SFP)<br>
              Extended identifier                       : 0x04 (GBIC/SFP
      defined by 2-wire interface ID)<br>
              Connector                                 : 0x07 (LC)<br>
              Transceiver codes                         : 0x10 0x00 0x00
      0x00 0x00 0x00 0x00 0x00 0x00<br>
              Transceiver type                          : 10G Ethernet:
      10G Base-SR<br>
              Encoding                                  : 0x06 (64B/66B)<br>
              BR, Nominal                               : 10300MBd<br>
              Rate identifier                           : 0x02 (8/4/2G
      Rx Rate_Select only)<br>
              Length (SMF,km)                           : 0km<br>
              Length (SMF)                              : 0m<br>
              Length (50um)                             : 80m<br>
              Length (62.5um)                           : 30m<br>
              Length (Copper)                           : 0m<br>
              Length (OM3)                              : 300m<br>
              Laser wavelength                          : 850nm<br>
              Vendor name                               : FS<br>
              Vendor OUI                                : 00:1b:21<br>
              Vendor PN                                 : SFP-10GSR-85<br>
              Vendor rev                                : A<br>
              Option values                             : 0x00 0x3a<br>
              Option                                    : RX_LOS
      implemented<br>
              Option                                    : TX_FAULT
      implemented<br>
              Option                                    : TX_DISABLE
      implemented<br>
              Option                                    : RATE_SELECT
      implemented<br>
              BR margin, max                            : 0%<br>
              BR margin, min                            : 0%<br>
              Vendor SN                                 : G2304040205<br>
              Date code                                 : 230411<br>
              Optical diagnostics support               : Yes<br>
              Laser bias current                        : 6.640 mA<br>
              Laser output power                        : 0.5481 mW /
      -2.61 dBm<br>
              Receiver signal average optical power     : 0.6270 mW /
      -2.03 dBm<br>
              Module temperature                        : 54.67 degrees
      C / 130.40 degrees F<br>
              Module voltage                            : 3.2896 V<br>
              Alarm/warning flags implemented           : Yes<br>
              Laser bias current high alarm             : Off<br>
              Laser bias current low alarm              : Off<br>
              Laser bias current high warning           : Off<br>
              Laser bias current low warning            : Off<br>
              Laser output power high alarm             : Off<br>
              Laser output power low alarm              : Off<br>
              Laser output power high warning           : Off<br>
              Laser output power low warning            : Off<br>
              Module temperature high alarm             : Off<br>
              Module temperature low alarm              : Off<br>
              Module temperature high warning           : Off<br>
              Module temperature low warning            : Off<br>
              Module voltage high alarm                 : Off<br>
              Module voltage low alarm                  : Off<br>
              Module voltage high warning               : Off<br>
              Module voltage low warning                : Off<br>
              Laser rx power high alarm                 : Off<br>
              Laser rx power low alarm                  : Off<br>
              Laser rx power high warning               : Off<br>
              Laser rx power low warning                : Off<br>
              Laser bias current high alarm threshold   : 13.000 mA<br>
              Laser bias current low alarm threshold    : 4.000 mA<br>
              Laser bias current high warning threshold : 12.500 mA<br>
              Laser bias current low warning threshold  : 5.000 mA<br>
              Laser output power high alarm threshold   : 1.0000 mW /
      0.00 dBm<br>
              Laser output power low alarm threshold    : 0.2512 mW /
      -6.00 dBm<br>
              Laser output power high warning threshold : 0.7943 mW /
      -1.00 dBm<br>
              Laser output power low warning threshold  : 0.3162 mW /
      -5.00 dBm<br>
              Module temperature high alarm threshold   : 78.00 degrees
      C / 172.40 degrees F<br>
              Module temperature low alarm threshold    : -13.00 degrees
      C / 8.60 degrees F<br>
              Module temperature high warning threshold : 73.00 degrees
      C / 163.40 degrees F<br>
              Module temperature low warning threshold  : -8.00 degrees
      C / 17.60 degrees F<br>
              Module voltage high alarm threshold       : 3.7000 V<br>
              Module voltage low alarm threshold        : 2.9000 V<br>
              Module voltage high warning threshold     : 3.6000 V<br>
              Module voltage low warning threshold      : 3.0000 V<br>
              Laser rx power high alarm threshold       : 1.0000 mW /
      0.00 dBm<br>
              Laser rx power low alarm threshold        : 0.0100 mW /
      -20.00 dBm<br>
              Laser rx power high warning threshold     : 0.7943 mW /
      -1.00 dBm<br>
              Laser rx power low warning threshold      : 0.0158 mW /
      -18.01 dBm<br>
      <br>
      For reference the other side's juniper does see light as can be
      seen in this post:
<a class="moz-txt-link-freetext" href="https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253/11?u=samip537">https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253/11?u=samip537</a><br>
      <br>
      - Skyler<br>
    </p>
  </body>
</html>

--------------s9aqSPqS0oSG0D3c5FinjDVT--

--===============0977105366234746719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0977105366234746719==--
