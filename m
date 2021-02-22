Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB5E321E1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 18:31:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEF61853FF;
	Mon, 22 Feb 2021 17:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rzSJTptd_eu1; Mon, 22 Feb 2021 17:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDB71853C3;
	Mon, 22 Feb 2021 17:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78ECE1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 17:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74E1B84CC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 17:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOgZG3shAMTQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 17:30:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7F8C6853FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 17:30:58 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id cx11so6937528pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 09:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=CxYzf4iLrKHCNKtHQ8ZsS9KmxE98OKU/5kuL1yqgG3s=;
 b=XaIkwyiGigPzswwJKjhuEbwPTUCBlv7WNqN8BoEufH35e4u2gdHXrZd7wZxhdZBJ8e
 qKFHOycuNMFa8CRTx0/1CjPoDTXPVa+awBw4tOjLlN4CuW2nLY0H99kut7EF2JqzNKTb
 lLQs5iSpgiaSyF0j47dh8zeaQ9UJBSDRjYWXqcv+7mSLtckltreiUjOdVCkT+ltOQFeJ
 IQF4qxvLhOrodxIKh39Ka3bvtFVKiwc8J4EU21TAt2tAWA9ccVD9gXwQkM1I2Tbw3r62
 eUMFcOpDns4YH7YqRbRGKnU9F1yigxWDPXCbRgykJpI1E8tvVp/y4whoqwYPcYr5zqF6
 bMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=CxYzf4iLrKHCNKtHQ8ZsS9KmxE98OKU/5kuL1yqgG3s=;
 b=RxIaFbCuP918aEVoQpN7iTVUofu7F4dDFbAQYxpQ+4l35dtQAadqi5/6Yq8Tk9fwZw
 +q/oW+uCTfymB0mcEZxF4FN590IWchtInxhFRXSgbfCqAD20ZDuYzUdPDGe9c6+6GVsv
 ofej8G5SU9Os5Kf6BlxosM/yD2QGZnNQNCOX1dyvC6i1q+zeCEYufPAo4RLFmQziJlWM
 DG6PwC29Ao1R/rJHZzYH1xnIoquc917fzslPxNekadsOU1q1B4EbdvAJo+GVILF/T/T9
 bEqq1sUQPl9f4dJxLeHEgzEH+oF+eu7Dn88X2JQOSZYOoCFj2Ny6y+LiPnvv0a2SoIVC
 gFvw==
X-Gm-Message-State: AOAM532mPMK3PflX3JVkpgVy60ZFRxFTC79/bzKoIaMAff8kVfg3/jaz
 GZl4lGXTE3y9/j328CilCPM1yA==
X-Google-Smtp-Source: ABdhPJzsViG/yiG2kRNGPFqgCBjD3OELbUW7NmoH3HkhXhsCPP47+1CrpS2MOtTKduUeVOkiaaX4Gg==
X-Received: by 2002:a17:902:bb97:b029:e3:99a6:741d with SMTP id
 m23-20020a170902bb97b02900e399a6741dmr23116038pls.48.1614015057903; 
 Mon, 22 Feb 2021 09:30:57 -0800 (PST)
Received: from hermes.local (mobile-166-176-184-131.mycingular.net.
 [166.176.184.131])
 by smtp.gmail.com with ESMTPSA id i16sm18241023pgv.60.2021.02.22.09.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 09:30:57 -0800 (PST)
Date: Mon, 22 Feb 2021 09:30:49 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20210222093049.395aea61@hermes.local>
MIME-Version: 1.0
Subject: [Intel-wired-lan] Fw: [Bug 211859] New: Difficulties with macvlan
 on igc network driver
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKCkRhdGU6IFNhdCwgMjAgRmViIDIwMjEgMDE6MjE6
MzIgKzAwMDAKRnJvbTogYnVnemlsbGEtZGFlbW9uQGJ1Z3ppbGxhLmtlcm5lbC5vcmcKVG86IHN0
ZXBoZW5AbmV0d29ya3BsdW1iZXIub3JnClN1YmplY3Q6IFtCdWcgMjExODU5XSBOZXc6IERpZmZp
Y3VsdGllcyB3aXRoIG1hY3ZsYW4gb24gaWdjIG5ldHdvcmsgZHJpdmVyCgoKaHR0cHM6Ly9idWd6
aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTE4NTkKCiAgICAgICAgICAgIEJ1ZyBJ
RDogMjExODU5CiAgICAgICAgICAgU3VtbWFyeTogRGlmZmljdWx0aWVzIHdpdGggbWFjdmxhbiBv
biBpZ2MgbmV0d29yayBkcml2ZXIKICAgICAgICAgICBQcm9kdWN0OiBOZXR3b3JraW5nCiAgICAg
ICAgICAgVmVyc2lvbjogMi41CiAgICBLZXJuZWwgVmVyc2lvbjogNS40LjAtNjUtZ2VuZXJpYyAo
eDg2XzY0KQogICAgICAgICAgSGFyZHdhcmU6IEFsbAogICAgICAgICAgICAgICAgT1M6IExpbnV4
CiAgICAgICAgICAgICAgVHJlZTogTWFpbmxpbmUKICAgICAgICAgICAgU3RhdHVzOiBORVcKICAg
ICAgICAgIFNldmVyaXR5OiBub3JtYWwKICAgICAgICAgIFByaW9yaXR5OiBQMQogICAgICAgICBD
b21wb25lbnQ6IElQVjQKICAgICAgICAgIEFzc2lnbmVlOiBzdGVwaGVuQG5ldHdvcmtwbHVtYmVy
Lm9yZwogICAgICAgICAgUmVwb3J0ZXI6IHBqd0ByaHltZS5jb20uYXUKICAgICAgICBSZWdyZXNz
aW9uOiBObwoKRHJpdmVyOiBpZ2MKTklDOiBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jw
b3JhdGlvbiBEZXZpY2UgMTVmMyAocmV2IDAyKQpNb2JvOiBBU1VTIFo0OTAtSApGaXJtd2FyZTog
MS40NSAobGF0ZXN0IGZyb20gSW50ZWwpCgoKVGhpcyBOSUMgaXMga25vd24gdG8gaGF2ZSBzb21l
IGhhcmR3YXJlIHByb2JsZW1zLCBzbyB0aGlzIG1heSBiZQppbnN1cm1vdW50YWJsZS4gVGhhdCBz
YWlkOgoKCkNyZWF0aW5nIGEgbWFjdmxhbiBhdHRhY2hlZCB0byB0aGlzIE5JQyByZXN1bHRzIGlu
IGZhaWx1cmUgdG8gcm91dGUgTGF5ZXIgMgptZXNzYWdlcyBjb3JyZWN0bHkgKHNwZWNpZmljYWxs
eSwgREhDUE9GRkVSKS4gVGhlIGNvbmZpZyB1c2VkIHdhczoKCgppcCBsaW5rIGFkZCBtdmxhbl9u
YW1lIGxpbmsgZXRoX25hbWUgdHlwZSBtYWN2bGFuIG1vZGUgYnJpZGdlCgoKV2hlbiB0aGUgbGlu
ayBpcyBicm91Z2h0IHVwLCB2aXJ0dWFsYm94IFZNcyBjb25uZWN0ZWQgdG8gdGhlIOKAmG12bGFu
X25hbWXigJkKaW50ZXJmYWNlIGluIGJyaWRnZWQgbW9kZSBjYW4gc2VuZCBESENQUkVRVUVTVCBt
ZXNzYWdlcywgd2hpY2ggYXJlIHNlbnQKY29ycmVjdGx5IG92ZXIgdGhlIGludGVyZmFjZSwgYW5k
IHJlY2VpdmVkIGJ5IHRoZSBzZXJ2ZXIuIFRoZSByZXNwb25zZQooREhDUE9GRkVSKSBpcyBuZXZl
ciByb3V0ZWQgdG8gdGhlIFZNLgoKCkZ1cnRoZXIsIGF0dGFjaGluZyB0aGUgVk0gdG8gdGhlIE5J
QyBpbnRlcmZhY2UgZGlyZWN0bHkgaW4gYnJpZGdlZCBtb2RlIGhhcyBhCnNpbWlsYXIgcmVzdWx0
LgoKClBlcmZvcm1pbmcgZXhhY3RseSB0aGUgc2FtZSB0ZXN0cyBvbiBhIGRpZmZlcmVudCBOSUMg
KEludGVsIENvcnBvcmF0aW9uIEkzNTAKR2lnYWJpdCBOZXR3b3JrIENvbm5lY3Rpb24gKHJldiAw
MSkpLCByZXN1bHRzIGluIGNvcnJlY3QgZnVuY3Rpb25pbmc6IHRoZSB2bGFuCnNldHVwIHdvcmtz
LCBhcyBkaXJlY3QgVk0gYnJpZGdpbmcgdG8gdGhlIE5JQy4KCi0tIApZb3UgbWF5IHJlcGx5IHRv
IHRoaXMgZW1haWwgdG8gYWRkIGEgY29tbWVudC4KCllvdSBhcmUgcmVjZWl2aW5nIHRoaXMgbWFp
bCBiZWNhdXNlOgpZb3UgYXJlIHRoZSBhc3NpZ25lZSBmb3IgdGhlIGJ1Zy4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
