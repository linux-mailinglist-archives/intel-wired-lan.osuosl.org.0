Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B227B861F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 19:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68CBF42132;
	Wed,  4 Oct 2023 17:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CBF42132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696439313;
	bh=t8FKJwOpWkO7+ZLhR7IgbUEJvVvAzPI/y8metcvLhuQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gq3PdWmFZp0FA7u9m3zxETZJrNhVZ/bDJjVdJsijQoJMpLpuZI6N4PW7p08Tz4fyY
	 Gv3SOuzBrfqZ5EjULeA9QgWlzBDd0HrI5XMopOlHbNuSUFWKStD1SaGK0lmjHRBbOd
	 mBDuIN1sETWSzT7My475EsdBVx+IJBwj2FKkUmV8dXbpyiofrYRX09Rpv2BqUPpM0m
	 TDiaG/G4E2xlsvR4SMBndagXv8HqySL/bBrkdMqVR2vAPW4vd8tFLR+Yw6eYOgcEp6
	 YqAdkTmBnBJr+MLfvs3qHEhhn1RVn3vIx1d3WvIqwn2mQ5m/9heXlJjnswBU1JrE0H
	 4ZZO9CxhssHLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9A_jDOY_BLr9; Wed,  4 Oct 2023 17:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63CEF41F4C;
	Wed,  4 Oct 2023 17:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63CEF41F4C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CF2E1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB3BF404A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:08:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB3BF404A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LdrOAzCrz6yE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 17:08:24 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 70F2E401ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:08:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70F2E401ED
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 58F6A3200B21;
 Wed,  4 Oct 2023 13:08:23 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 04 Oct 2023 13:08:23 -0400
X-ME-Sender: <xms:BpwdZYtHwoclaxGflAbBnD9kpnOS0UubwDmzuxKsGxGQo1XniUCF6A>
 <xme:BpwdZVd0GSB9uEK1ZBq0JvSiGWkkD7x92Sup6qaFCIDaaZR3CPrhPe6Tf8KvonOhi
 R4jJhvM3nFKVXTE5xI>
X-ME-Received: <xmr:BpwdZTwL8TKzzNnOZKAYFupJljknbw_jR2LceIFgflQP6yAgH7hhwGSItDOQXSvHPedc9xd8TcvNfEifdRWrDB_BF_D7q4S1kW4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrgedvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurheptgfkffggfgfuvfevfhfhjgesrgdtreertddvjeenucfhrhhomhepufhkhihl
 vghrucfomohnthihshgrrghrihcuoehsmhdolhhishhtshesshhkhihmrdhfiheqnecugg
 ftrfgrthhtvghrnhepteeggfejgfeftdeileeutdffheejvdeuudeukeegteegfeegieej
 gfduteekhfdtnecuffhomhgrihhnpehvhihoshdrihhonecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepshhmodhlihhsthhssehskhihmhdrfhhi
X-ME-Proxy: <xmx:BpwdZbMc7eg9cQOzA1iVV57-WIrWgh0jnFNTwN2-uD9nAnDs8OYj5Q>
 <xmx:BpwdZY_OBSAXHWv2CxOWmUCDawxUZPTzrITFAV_m2Zo5G6PUVmHlvQ>
 <xmx:BpwdZTUJyMhv-cLPAnsnUmsUhxGc7I8AznkKvyGmdhPNn1m0kZ0eDA>
 <xmx:BpwdZWnrmblfC1cty5GLRki2ziet1uCQ5Dc7EpuLlQsZo6bhf_Wx8A>
Feedback-ID: i1cc947c0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Oct 2023 13:08:21 -0400 (EDT)
Message-ID: <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
Date: Wed, 4 Oct 2023 20:08:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
In-Reply-To: <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1696439302; x=1696525702; bh=Ei
 j35Yzv3Mrzv2X1NJqwWpf3jP3T9keYkUQc4if1UHc=; b=FlEoN0JE2XMl6j3ntF
 pKMRtaEa+PDneNgtw7OOiD1VCHAupx5niJur75PJuf7654A0Jwlwq8VZKsEuzvq2
 fdsjVA4kAuQhoxc7Ii4CObWSg11DFV9rAqOqHKYm2iPUaRclxt86TrEbt5RVRqKY
 45AakpiTE7ikI5tbSA61EfQ+HKXfZInTqSAfhEqztwq2EZIFWoeosGw+YYKkjLVx
 wIQcsAoZXpDPvqSCNi6qa1JimxlxtRYFCg5/P2fuTZexETbROfEFhGUMT/2bC4qU
 uQImcL9AB+HBVycThF1swAM3VURAXuonXc8MyrUID6xIVOS8eG948TcYIzqVEvBb
 D6MA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1696439302; x=1696525702; bh=Eij35Yzv3Mrzv
 2X1NJqwWpf3jP3T9keYkUQc4if1UHc=; b=aoEP71Oe5uHwmeAfTwEFtxeb+VMCK
 vB16FvOHlT7TM4EIeosKoO72w0USGTXlYq3Zlhkpz8mCSplrPKqEzyZdTX97RAn8
 5FQRMhPSock4puF7P0GHa3kNtG1Fs61iT36fx84z+AIV4jLdUhHYuSwS6vTueuG/
 kVaqzwY48VVbbEAQZaKxHTw5XBp/9XcUqt5psqO0iqoq8F0B1B/y2f93ppXlHwrF
 UHXD24O/a3X5T8nDe+Qum3FfyA1jEV44P4oX/uywyXUtTHpyW64Qg0m2Z2bkuiRr
 8mWS2imz8I2HDKxDMGtvwxYguWBDfstJ6zaCXjEjoiVPrdvCqT3C2pz+w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm3 header.b=FlEoN0JE; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=aoEP71Oe
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
Content-Type: multipart/mixed; boundary="===============0492103809009992723=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============0492103809009992723==
Content-Type: multipart/alternative;
 boundary="------------pUZNhG20wj94wf86aSqewny4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pUZNhG20wj94wf86aSqewny4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

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


--------------pUZNhG20wj94wf86aSqewny4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <blockquote type="cite">
      <blockquote type="cite" style="color: #007cff;">Hi there,
        <br>
        <br>
        It seems that for reasons unknown to me, my Intel X533 based 10G
        SFP+ doesn't want to work with kernel 6.1.55 in VyOS 1.4 nor
        Debian 12 but it does in OPNsense which is based on FreeBSD
        13.2.
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
    <p>That's enabled by default on VyOS so yes, but it doesn't seem to
      be a problem that it wouldn't recolonize the module at all (and
      print a warning/error about it) but instead something else.</p>
    <p>
      <blockquote type="cite">
        <blockquote type="cite" style="color: #007cff;">For reference
          the thread on VyOS forums regarding this: <a
            class="moz-txt-link-freetext"
href="https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253">https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253</a>
          <br>
        </blockquote>
        <br>
        Also, for troubleshooting it would be useful to have the output
        of ethtool -m eth0 from your device.
        <br>
      </blockquote>
    </p>
    <p><br>
      It was already provided in the VyOS forum thread, but here:<br>
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
      <a class="moz-txt-link-freetext"
href="https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253/11?u=samip537">https://forum.vyos.io/t/10g-sfp-trouble-with-linking-intel-x553/12253/11?u=samip537</a><br>
      <br>
      - Skyler</p>
    <br>
  </body>
</html>

--------------pUZNhG20wj94wf86aSqewny4--

--===============0492103809009992723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0492103809009992723==--
