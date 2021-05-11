Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF5137AA38
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 17:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49E3E60D6A;
	Tue, 11 May 2021 15:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pcas2D0FXOf6; Tue, 11 May 2021 15:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F08E6074F;
	Tue, 11 May 2021 15:07:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B49A1BF420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2374184158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GXVVWc9DL6MI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 15:01:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C9E084395
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:01:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F217613C1;
 Tue, 11 May 2021 15:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620745297;
 bh=CGntqTzT0CjwBnD8m2IoNs2tKZ5vRmYFfQ0jAL/UEb8=;
 h=From:To:Cc:Subject:Date:From;
 b=panu4sVvuTFMZuqoZPlBkXPO1+Kh+4Bp7wMgfwwhZeIJ22TPqPX+LNgC81uNqjndt
 Yr99x1IRXYnyYKXssWNKnICXlOMNRnUy0uE5I3bPlgo2t9CStA38Vy3VkQC5iqM6ni
 apXbgb5KKoleKiXgAGhnYEV3iXjZTDgpkKJKqo10RnzxpF0C/p8ixNRp0t857htG06
 RvTMwBONaCF/Z3OZOfdrF0JmxogubCngp2wgSEjXEUoRlOKrakqnOZlp9ktaXJYMhq
 EJ7nfcBbg0H39QjX+8+xJtNS6UOYdTcYNKJda7JGVIJy69mksb5VWbVtI/oYJuVijz
 9Ft1gfPEazwXg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lgTt7-000k0z-Pq; Tue, 11 May 2021 17:01:33 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Tue, 11 May 2021 17:01:27 +0200
Message-Id: <cover.1620744606.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 11 May 2021 15:07:27 +0000
Subject: [Intel-wired-lan] [PATCH 0/5] Fix some UTF-8 bad usages
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============2247087795965296307=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2247087795965296307==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series follow up this past series:
	https://lore.kernel.org/lkml/cover.1620641727.git.mchehab+huawei@kernel.org/

Containing just the manual fixes from it. I'll respin the remaining
patches on a separate series.

Please note that patches 1 to 3 are identical to the ones posted
on the original series.

Patch 1 is special: it fixes some left-overs from a convertion
from cdrom-standard.tex: there, some characters that are
valid in C were converted to some visually similar UTF-8 by LaTeX.

Patch 2 remove U+00ac ('¬'): NOT SIGN characters at the end of
the first line of two files. No idea why those ended being there :-p

Patch 3 replaces:
	KernelVersion:»·3.3
by:
	KernelVersion:	3.3

which is the expected format for the KernelVersion field;

Patches 4 and 5 fix some bad usages of EM DASH/EN DASH on
places that it should be, instead, a normal hyphen. I suspect
that they ended being there due to the usage of some conversion
toolset.

Mauro Carvalho Chehab (5):
  docs: cdrom-standard.rst: get rid of uneeded UTF-8 chars
  docs: ABI: remove a meaningless UTF-8 character
  docs: ABI: remove some spurious characters
  docs: hwmon: tmp103.rst: fix bad usage of UTF-8 chars
  docs: networking: device_drivers: fix bad usage of UTF-8 chars

 .../obsolete/sysfs-kernel-fadump_registered   |  2 +-
 .../obsolete/sysfs-kernel-fadump_release_mem  |  2 +-
 Documentation/ABI/testing/sysfs-module        |  4 +--
 Documentation/cdrom/cdrom-standard.rst        | 30 +++++++++----------
 Documentation/hwmon/tmp103.rst                |  4 +--
 .../device_drivers/ethernet/intel/i40e.rst    |  4 +--
 .../device_drivers/ethernet/intel/iavf.rst    |  2 +-
 7 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.30.2



--===============2247087795965296307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2247087795965296307==--
