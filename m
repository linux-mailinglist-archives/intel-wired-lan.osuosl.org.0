Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34527AFEA3C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 15:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1B1F4085E;
	Wed,  9 Jul 2025 13:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bzOv1hEWxCa4; Wed,  9 Jul 2025 13:31:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B932140905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752067915;
	bh=jhrQrdwjqbXJ+aeZgreDfDq+/3Niqi/WqrCzbRM6tNs=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u11K9sglkuh07ui9o5sZkaFSkUp7Al8LUdzTjuecfMidmNBhsQVjs3/Dj/Zivw3OF
	 g4LtkiGoa5Ib7yowW5Aj4aDVe5OROwQYN4h8XC6QqXYR2dK7OZKVhzX5xZ1+Buz6FD
	 QtRcH1DydFe//U4S9MlCs0Y0/cwrT9V8P4SJzCZGTWGnU09MvG3eno5Sz3j+XxXxTj
	 zU7cXTP1Bn0W8CaddpqocA/FAI8N7DANpNNFNCqRIW0KYnrtyTHIgpnHTkfKLz8wZC
	 CxbuSmDCCpdKeDu5yNlQFL2kej9aH9A471/KMCtRZJrd+tWAl2+4XXPrmcKbY+Dh+w
	 lPp9QBz+tIJNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B932140905;
	Wed,  9 Jul 2025 13:31:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EDCB315F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 13:31:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D45A281291
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 13:31:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sS_iv1r7z6dw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 13:31:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::436; helo=mail-wr1-x436.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F3E8E812A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3E8E812A3
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3E8E812A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 13:31:49 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-3ab112dea41so2989534f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Jul 2025 06:31:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752067908; x=1752672708;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jhrQrdwjqbXJ+aeZgreDfDq+/3Niqi/WqrCzbRM6tNs=;
 b=VemgQRdXHOMNlPxorFPDdhCd21G3uHJInPEsevTqKhQgzdqfIHcc+0Kiao6sHgj6jA
 MCKnZsQo0FGzlSB2f647Zlc1A17eWTG+yhtoFAseLIQf5BFfw0gsMN22VG868dkodSvy
 gdw04g+y4ZNOxho7pn2AKqNsVqhBaudt64MVF9KQJIBw50ZvuQi22f5pgVmOCz3i4kvX
 AWJtmSJGhLaIsYUyZxq29TBh/fcmlPAUzPCz1DYjVMWYSc72Fq1M2fSVc+Yl0XHx/19w
 mmg5bM7Tyv1vxo+x0GPwEKbpWtmA0IM5BShV9PkgQqRyD9YR60/KZZjLQrpVOQtmfCQc
 Og1g==
X-Gm-Message-State: AOJu0Yx+YjAy53PWnFCHUIY/FRTKli+wfwp0l6rIrXc1zauUb6vOHwG7
 ifxtPf4LRY2AEFXJcrUX6YmSLqNRBfVJLECWj7Zr8TFUVPyrVKNVv2TmDKXMre94VAg=
X-Gm-Gg: ASbGncsu1GWvH6j7hOMxIgArErPh+9fQqvOvE+boFdgpHiXuZPXaoKcYN/LnYmmo6Gf
 Pk6/YdBVbJMefMr1I3gdT9eKjHMCdm7Dt9H2G9vNqP2g4EpRSh3mAXftxC3nVjw92OftJU17z/a
 TayP38c1A1v/eZilajtVooN8H4jKP5nurMbJ8faABZ8/t2moh5UfHgO2pSkWwJhKSqZbb18krkS
 rH5NPWb9xsf2r9EABdZpRSVlQfn7bPP7pHFuCn4TYimsq89jR1TnsM+H+c3b8BYpRTR2ggUPBtz
 l1ZRL1KExWv2tourQEbTldRj2fyL3bu+eKMkuUCmK2aV0hHYSXQaFoexVup0Wjee
X-Google-Smtp-Source: AGHT+IEk97BLNurfRb2arivCq/fz9GGxVHcyANgW+U18S50uKk61NNc1T3JRkZwVCKl6dS6rw+q/Gg==
X-Received: by 2002:a05:6000:2f82:b0:3a5:1410:71c0 with SMTP id
 ffacd0b85a97d-3b5e4529863mr2085134f8f.38.1752067907535; 
 Wed, 09 Jul 2025 06:31:47 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b470f871casm15853784f8f.45.2025.07.09.06.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jul 2025 06:31:47 -0700 (PDT)
Date: Wed, 9 Jul 2025 15:31:42 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <gv5l3vrfkyn6ara6l7uvn54qb7tuwvfn452o6ixfzjtvqbgxlx@jf4gnjrkuha2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1752067908; x=1752672708;
 darn=lists.osuosl.org; 
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jhrQrdwjqbXJ+aeZgreDfDq+/3Niqi/WqrCzbRM6tNs=;
 b=r2TmCHwdDu2tqFLFUTuziB6FnzI4mD26DIVfY0TP93yLj6/C2zCl8qb2Dp/ksh8LxF
 HXlv4rSxTJOG4bdMHDC+50b5eMmEYYnRbge2aCJaTHnlq7eZof1prgokKHFwTvunbL3/
 TW6Sl7XPbaP4jwTogRVNFwsDUIDczb1Tf0NyWPQJthlUmKhG/nN1Gcv5mDd3qJeVGimV
 ihP0xWsb3EZTWziiSTrJuAgpKgLcQKsLjCWXj8NOKYOcWxr95ZDKcAmwZybLecjSjf2q
 cXKHYuxPNYbQ/hXFSu2uWNhNgtSgRcqh+Hb+OBEY2c96QFU4ZnnGLcS4uhr4b3bFcGyH
 Ri/w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=r2TmCHwd
Subject: [Intel-wired-lan] fwupd - devlink firmware flashing support
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

Hi.

I'm currently working on fwupd plugin for devlink. I have somehow
working version tested with netdevsim and mlx5. I'm curious if you would
be interested into supporting your nics as well. Here's the code:
https://github.com/jpirko/fwupd/tree/wip_devlink_rfc1

In plugins/devlink/tests/example/ you can find how to build cab file for
netdevsim. To flash it, get the device id from command:
$ sudo ./build/src/fwupdtool get-devices
and flash it using:
$ sudo ./build/src/fwupdtool install plugins/devlink/tests/example/firmware.cab fa645832a32a760dc0d20ec0cac7dcd13ca3d104

for mlx5 cx6dx nic I'm using following example xml:
$ cat cx6dx-22_45_1020.firmware.metainfo.xml
<?xml version="1.0" encoding="UTF-8"?>
<component type="firmware">
  <id>com.nvidia.ConnectX6dx.firmware</id>
  <name>ConnectX6dx Test Firmware</name>
  <summary>Test firmware for ConnectX6dx device</summary>
  <description>
    <p>Test firmware package for ConnectX6dx device</p>
  </description>
  <provides>
    <firmware type="flashed">f7f61adf-77b6-5e21-bb80-0112a70ab91c</firmware>
  </provides>
  <metadata_license>CC0-1.0</metadata_license>
  <project_license>GPL-2.0+</project_license>
  <developer_name>Test Developer</developer_name>
  <releases>
    <release urgency="high" version="22.45.1020" date="2025-07-01">
      <description>
        <p>Test firmware release for ConnectX6dx device</p>
      </description>
    </release>
  </releases>
  <requires>
    <firmware compare="ge" version="0.0.1"/>
  </requires>
  <custom>
    <value key="LVFS::UpdateProtocol">org.kernel.devlink</value>
    <value key="LVFS::DeviceFlags">omit-component-name,needs-activation</value>
  </custom>
</component>

You need to change the GUID hash be whatever is generated for your
device.

Also, note the flags. That may be different for you, idk. You may not
need omit-component-name, as I think for ice you support flashing with
component name.

Let me know if I can do anything to assist you.

Thanks!

Jiri

