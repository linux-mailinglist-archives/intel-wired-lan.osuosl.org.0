Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECC922330A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 07:47:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBFC987DCE;
	Fri, 17 Jul 2020 05:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TY8B6Z5MkRHV; Fri, 17 Jul 2020 05:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BDB587E07;
	Fri, 17 Jul 2020 05:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D71BD1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1A7D203E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ccWjaWp1yXSP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 03:50:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id AFEB3203D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:50:51 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id f23so9013552iof.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 20:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index
 :content-language;
 bh=rJqfg7KqVjvQTDncsEVFZgFc61wUL7psisx7MkuYgY4=;
 b=GowoZdA/YcFgQiIuiSFaE4rd+S5pPZD+UyL42jgSJ48KaiEy3OSPZtFaUAAOry9Q2w
 ciLiOBp4OSh+V31ZH+0ZyAA+MLrAz4pkrgEtEmBrXSt47qlwgDOc77e9wzt74X/bhwJp
 0xCwjO+16FtFHxVbfcnPYe0lmmeHihzXZDxHIVsCpyxNEPEGOjgZjtAeN/wxHDPwqAfT
 8/EnyJkimap/nx0iJQIMopsp2GMiVkdK924bxSTNxqVhahJ3zx8SoZ9b4S3S2PQYKgoo
 oCYyoZfPqkDswPeuUNxrqf2teftvvJiA1mxq4NQ+1EMC+NafUaXOhEHEmZHRID4QWXnP
 H2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index
 :content-language;
 bh=rJqfg7KqVjvQTDncsEVFZgFc61wUL7psisx7MkuYgY4=;
 b=qdeGdvVglJ5Gon4ADXM0W10P+L1i4hSJ0rUc44lesWAv/CHrvXvZmeF1gUKClPbPvE
 FeiauyLAntKmoUg8Z5MemjsLvxr1t3kAE0KtPOU16vwC+Eg1LDqIBRZvkGs6pth/awkX
 ZkUMS0XTHKCD+5FHpmdWS/zVF7z9ZvxA2k9BgNkJ3IqQel7inoWYO677T+mOSl+xr60M
 xMnFan5AgicZV9hNhEoYcLdBXlwUIKkLL+2/MxLZosmjpkL7nR5ylokGx3A008lyY3XG
 Y47X1H4wYDG7pcEKa27dqNSOCMg2Wrhhs/7LZEfWkHL2cPvoL5az3ttmKgy5yGpOoc6/
 laWA==
X-Gm-Message-State: AOAM53218Cb2HA4AKKOrhdLkgahP4SaZ20xIxprre4zHp5ZVL6uJ/Do6
 ZEczQJj/I8UApo1eOtZ5RAg=
X-Google-Smtp-Source: ABdhPJz8DvSm/452IBOrteV7MPrevU+HifRqCKsUKCNRjyqMIwHA1TPSoVUFpIltJ89pxfNZC6uYwA==
X-Received: by 2002:a02:5e88:: with SMTP id h130mr8961458jab.116.1594957850716; 
 Thu, 16 Jul 2020 20:50:50 -0700 (PDT)
Received: from QianNUC ([2601:249:4300:c41:9c1d:d627:49f3:7b4])
 by smtp.gmail.com with ESMTPSA id v13sm3719758iox.12.2020.07.16.20.50.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jul 2020 20:50:50 -0700 (PDT)
From: <qianshangshu.1997@gmail.com>
To: <jeffrey.t.kirsher@intel.com>,
	<davem@davemloft.net>
References: <SJ0PR07MB7584B6DC5998006092D4D8859C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
 <SJ0PR07MB7584416FB7A07FD506B8237F9C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
In-Reply-To: <SJ0PR07MB7584416FB7A07FD506B8237F9C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
Date: Thu, 16 Jul 2020 23:50:48 -0400
Message-ID: <001a01d65bed$7556fc20$6004f460$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdZb5g/mXp6i3XZRRzSXQldaZE1+VAABUlEAAABshXA=
Content-Language: en-us
X-Mailman-Approved-At: Fri, 17 Jul 2020 05:47:41 +0000
Subject: [Intel-wired-lan] PROBLEM: [e1000e] 10% throughput drop on I219-LM
 after the buffer overrun fix even with TSO&GSO disabled
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[1.] One line summary of the problem:

[e1000e] 10% throughput drop on I219-LM after the buffer overrun fix even
with TSO&GSO disabled

[2.] Full description of the problem/report:

With e1000e 3.6.2-k and 3.8.4-NAPI driver, which include the fix for the
buffer overrun problem
(https://github.com/torvalds/linux/commit/b10effb92e272051dd1ec0d7be56bf9ca8
5ab927, discussion: https://www.spinics.net/lists/netdev/msg460589.html),
I219-LM network card have a 10% throughput drop in the iperf3 test (with TSO
and GSO disabled) compared with the driver without such patch, and the
client is initiating the stream in such test (iperf3 client mode without -R
option). If the server is initiating the stream (with -R option in iperf3
client mode), the performance is not impacted.

That is to say, disabling TSO and GSO as suggested in that patch still have
performance impact on the TCP stream, and the throughput drops about 10%.

I tried to rollback the patch introduced to fix the buffer overrun problem
in the 3.8.4-NAPI driver, with TSO and GSO enabled, iperf3 test still cannot
max out my 1Gbps uplink. However, with TSO and GSO disabled, 1Gbps uplink
can be fully saturated.

I'll attach iperf3 test results for all these situations later in this
email.

[3.] Keywords

Network driver, e1000e

[4.] Kernel information
[4.1.] Kernel version (from /proc/version):

Linux version 5.4.0-31-generic (buildd@lgw01-amd64-059) (gcc version 9.3.0
(Ubuntu 9.3.0-10ubuntu2)) #35-Ubuntu SMP Thu May 7 20:20:34 UTC 2020

[4.2.] Kernel .config file:

https://kernel.ubuntu.com/~kernel-ppa/config/focal/linux/5.4.0-31.35/amd64-c
onfig.flavour.generic

[5.] Most recent kernel version which did not have the bug:

V4.14.2

[6.] Environment

00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (2)
I219-LM (rev 31) 

driver: e1000e
version: 3.2.6-k
firmware-version: 0.8-4
expansion-rom-version:
bus-info: 0000:00:1f.6
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: no

iperf3:
iperf 3.7 (cJSON 1.5.2)
Linux Hetzner 5.4.0-31-generic #35-Ubuntu SMP Thu May 7 20:20:34 UTC 2020
x86_64 Optional features available: CPU affinity setting, IPv6 flow label,
SCTP, TCP congestion algorithm setting, sendfile / zerocopy, socket pacing,
authentication

[X.] Other notes, patches, fixes, workarounds:

3.6.2-k w/ TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sender
[  5]   0.00-10.02  sec   119 MBytes  99.4 Mbits/sec
receiver
[  7]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sender
[  7]   0.00-10.02  sec   119 MBytes  99.4 Mbits/sec
receiver
[  9]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sender
[  9]   0.00-10.02  sec   119 MBytes  99.4 Mbits/sec
receiver
[ 11]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sender
[ 11]   0.00-10.02  sec   119 MBytes  99.5 Mbits/sec
receiver
[ 13]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sender
[ 13]   0.00-10.02  sec   119 MBytes  99.5 Mbits/sec
receiver
[SUM]   0.00-10.00  sec   601 MBytes   504 Mbits/sec    0             sender
[SUM]   0.00-10.02  sec   594 MBytes   497 Mbits/sec
receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   351 MBytes   293 Mbits/sec  134             sender
[  5]   0.00-10.00  sec   344 MBytes   289 Mbits/sec
receiver
[  7]   0.00-10.02  sec   204 MBytes   171 Mbits/sec  331             sender
[  7]   0.00-10.00  sec   201 MBytes   168 Mbits/sec
receiver
[  9]   0.00-10.02  sec   174 MBytes   146 Mbits/sec  226             sender
[  9]   0.00-10.00  sec   171 MBytes   144 Mbits/sec
receiver
[ 11]   0.00-10.02  sec   177 MBytes   148 Mbits/sec  226             sender
[ 11]   0.00-10.00  sec   173 MBytes   145 Mbits/sec
receiver
[ 13]   0.00-10.02  sec   164 MBytes   138 Mbits/sec  229             sender
[ 13]   0.00-10.00  sec   161 MBytes   135 Mbits/sec
receiver
[SUM]   0.00-10.02  sec  1.04 GBytes   896 Mbits/sec  1146
sender
[SUM]   0.00-10.00  sec  1.03 GBytes   881 Mbits/sec
receiver

3.6.2-k w/o TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   190 MBytes   159 Mbits/sec    0             sender
[  5]   0.00-10.02  sec   188 MBytes   157 Mbits/sec
receiver
[  7]   0.00-10.00  sec   190 MBytes   160 Mbits/sec    0             sender
[  7]   0.00-10.02  sec   188 MBytes   157 Mbits/sec
receiver
[  9]   0.00-10.00  sec   191 MBytes   160 Mbits/sec    0             sender
[  9]   0.00-10.02  sec   188 MBytes   158 Mbits/sec
receiver
[ 11]   0.00-10.00  sec   190 MBytes   160 Mbits/sec    0             sender
[ 11]   0.00-10.02  sec   188 MBytes   158 Mbits/sec
receiver
[ 13]   0.00-10.00  sec   191 MBytes   160 Mbits/sec    0             sender
[ 13]   0.00-10.02  sec   188 MBytes   157 Mbits/sec
receiver
[SUM]   0.00-10.00  sec   953 MBytes   799 Mbits/sec    0             sender
[SUM]   0.00-10.02  sec   940 MBytes   787 Mbits/sec
receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   256 MBytes   214 Mbits/sec  128             sender
[  5]   0.00-10.00  sec   252 MBytes   211 Mbits/sec
receiver
[  7]   0.00-10.02  sec   238 MBytes   199 Mbits/sec  119             sender
[  7]   0.00-10.00  sec   234 MBytes   196 Mbits/sec
receiver
[  9]   0.00-10.02  sec   166 MBytes   139 Mbits/sec  207             sender
[  9]   0.00-10.00  sec   162 MBytes   136 Mbits/sec
receiver
[ 11]   0.00-10.02  sec   222 MBytes   186 Mbits/sec  316             sender
[ 11]   0.00-10.00  sec   219 MBytes   184 Mbits/sec
receiver
[ 13]   0.00-10.02  sec   225 MBytes   189 Mbits/sec  138             sender
[ 13]   0.00-10.00  sec   222 MBytes   186 Mbits/sec
receiver
[SUM]   0.00-10.02  sec  1.08 GBytes   927 Mbits/sec  908             sender
[SUM]   0.00-10.00  sec  1.06 GBytes   913 Mbits/sec
receiver

3.8.4-NAPI w/ TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   120 MBytes   100 Mbits/sec    0             sender
[  5]   0.00-10.02  sec   117 MBytes  97.5 Mbits/sec
receiver
[  7]   0.00-10.00  sec   115 MBytes  96.4 Mbits/sec    0             sender
[  7]   0.00-10.02  sec   114 MBytes  95.1 Mbits/sec
receiver
[  9]   0.00-10.00  sec   118 MBytes  98.9 Mbits/sec    0             sender
[  9]   0.00-10.02  sec   117 MBytes  97.6 Mbits/sec
receiver
[ 11]   0.00-10.00  sec   118 MBytes  99.3 Mbits/sec    0             sender
[ 11]   0.00-10.02  sec   117 MBytes  97.5 Mbits/sec
receiver
[ 13]   0.00-10.00  sec   118 MBytes  99.3 Mbits/sec    0             sender
[ 13]   0.00-10.02  sec   116 MBytes  97.5 Mbits/sec
receiver
[SUM]   0.00-10.00  sec   589 MBytes   494 Mbits/sec    0             sender
[SUM]   0.00-10.02  sec   580 MBytes   485 Mbits/sec
receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   289 MBytes   241 Mbits/sec  187             sender
[  5]   0.00-10.00  sec   282 MBytes   236 Mbits/sec
receiver
[  7]   0.00-10.02  sec   355 MBytes   297 Mbits/sec  324             sender
[  7]   0.00-10.00  sec   350 MBytes   293 Mbits/sec
receiver
[  9]   0.00-10.02  sec   144 MBytes   121 Mbits/sec  239             sender
[  9]   0.00-10.00  sec   141 MBytes   118 Mbits/sec
receiver
[ 11]   0.00-10.02  sec   136 MBytes   113 Mbits/sec  286             sender
[ 11]   0.00-10.00  sec   133 MBytes   111 Mbits/sec
receiver
[ 13]   0.00-10.02  sec   188 MBytes   157 Mbits/sec  156             sender
[ 13]   0.00-10.00  sec   185 MBytes   155 Mbits/sec
receiver
[SUM]   0.00-10.02  sec  1.09 GBytes   930 Mbits/sec  1192
sender
[SUM]   0.00-10.00  sec  1.06 GBytes   914 Mbits/sec
receiver

3.8.4-NAPI w/o TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   194 MBytes   163 Mbits/sec    0             sender
[  5]   0.00-10.02  sec   192 MBytes   160 Mbits/sec
receiver
[  7]   0.00-10.00  sec   194 MBytes   163 Mbits/sec    0             sender
[  7]   0.00-10.02  sec   192 MBytes   160 Mbits/sec
receiver
[  9]   0.00-10.00  sec   195 MBytes   163 Mbits/sec    0             sender
[  9]   0.00-10.02  sec   192 MBytes   160 Mbits/sec
receiver
[ 11]   0.00-10.00  sec   195 MBytes   163 Mbits/sec    0             sender
[ 11]   0.00-10.02  sec   192 MBytes   160 Mbits/sec
receiver
[ 13]   0.00-10.00  sec   195 MBytes   163 Mbits/sec    0             sender
[ 13]   0.00-10.02  sec   192 MBytes   161 Mbits/sec
receiver
[SUM]   0.00-10.00  sec   973 MBytes   816 Mbits/sec    0             sender
[SUM]   0.00-10.02  sec   958 MBytes   802 Mbits/sec
receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   499 MBytes   418 Mbits/sec  1208
sender
[  5]   0.00-10.00  sec   487 MBytes   409 Mbits/sec
receiver
[  7]   0.00-10.02  sec   149 MBytes   125 Mbits/sec  262             sender
[  7]   0.00-10.00  sec   146 MBytes   122 Mbits/sec
receiver
[  9]   0.00-10.02  sec   158 MBytes   132 Mbits/sec  199             sender
[  9]   0.00-10.00  sec   154 MBytes   129 Mbits/sec
receiver
[ 11]   0.00-10.02  sec   179 MBytes   149 Mbits/sec  209             sender
[ 11]   0.00-10.00  sec   175 MBytes   147 Mbits/sec
receiver
[ 13]   0.00-10.02  sec   128 MBytes   107 Mbits/sec  386             sender
[ 13]   0.00-10.00  sec   125 MBytes   105 Mbits/sec
receiver
[SUM]   0.00-10.02  sec  1.09 GBytes   931 Mbits/sec  2264
sender
[SUM]   0.00-10.00  sec  1.06 GBytes   912 Mbits/sec
receiver

3.8.4-NAPI w/ TSO & GSO (Without buffer overrun patch)

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   204 MBytes   171 Mbits/sec    0             sender
[  5]   0.00-10.02  sec   201 MBytes   169 Mbits/sec
receiver
[  7]   0.00-10.00  sec   203 MBytes   170 Mbits/sec    0             sender
[  7]   0.00-10.02  sec   201 MBytes   168 Mbits/sec
receiver
[  9]   0.00-10.00  sec   205 MBytes   172 Mbits/sec    0             sender
[  9]   0.00-10.02  sec   202 MBytes   169 Mbits/sec
receiver
[ 11]   0.00-10.00  sec   204 MBytes   171 Mbits/sec    0             sender
[ 11]   0.00-10.02  sec   201 MBytes   169 Mbits/sec
receiver
[ 13]   0.00-10.00  sec   204 MBytes   171 Mbits/sec    0             sender
[ 13]   0.00-10.02  sec   200 MBytes   168 Mbits/sec
receiver
[SUM]   0.00-10.00  sec  1019 MBytes   855 Mbits/sec    0             sender
[SUM]   0.00-10.02  sec  1006 MBytes   842 Mbits/sec
receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   281 MBytes   235 Mbits/sec  128             sender
[  5]   0.00-10.00  sec   277 MBytes   232 Mbits/sec
receiver
[  7]   0.00-10.02  sec   267 MBytes   223 Mbits/sec  154             sender
[  7]   0.00-10.00  sec   263 MBytes   221 Mbits/sec
receiver
[  9]   0.00-10.02  sec   170 MBytes   142 Mbits/sec  154             sender
[  9]   0.00-10.00  sec   166 MBytes   139 Mbits/sec
receiver
[ 11]   0.00-10.02  sec   161 MBytes   135 Mbits/sec  211             sender
[ 11]   0.00-10.00  sec   158 MBytes   132 Mbits/sec
receiver
[ 13]   0.00-10.02  sec   219 MBytes   183 Mbits/sec  116             sender
[ 13]   0.00-10.00  sec   216 MBytes   181 Mbits/sec
receiver
[SUM]   0.00-10.02  sec  1.07 GBytes   919 Mbits/sec  763             sender
[SUM]   0.00-10.00  sec  1.05 GBytes   906 Mbits/sec
receiver

3.8.4-NAPI w/o TSO & GSO (Without buffer overrun patch)

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   220 MBytes   184 Mbits/sec    0             sender
[  5]   0.00-10.02  sec   218 MBytes   182 Mbits/sec
receiver
[  7]   0.00-10.00  sec   220 MBytes   185 Mbits/sec    0             sender
[  7]   0.00-10.02  sec   217 MBytes   182 Mbits/sec
receiver
[  9]   0.00-10.00  sec   216 MBytes   182 Mbits/sec    0             sender
[  9]   0.00-10.02  sec   213 MBytes   179 Mbits/sec
receiver
[ 11]   0.00-10.00  sec   220 MBytes   185 Mbits/sec    0             sender
[ 11]   0.00-10.02  sec   218 MBytes   182 Mbits/sec
receiver
[ 13]   0.00-10.00  sec   221 MBytes   185 Mbits/sec    0             sender
[ 13]   0.00-10.02  sec   218 MBytes   182 Mbits/sec
receiver
[SUM]   0.00-10.00  sec  1.07 GBytes   920 Mbits/sec    0             sender
[SUM]   0.00-10.02  sec  1.06 GBytes   907 Mbits/sec
receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   259 MBytes   217 Mbits/sec   67             sender
[  5]   0.00-10.00  sec   255 MBytes   214 Mbits/sec
receiver
[  7]   0.00-10.02  sec   256 MBytes   214 Mbits/sec  168             sender
[  7]   0.00-10.00  sec   252 MBytes   212 Mbits/sec
receiver
[  9]   0.00-10.02  sec   260 MBytes   217 Mbits/sec  189             sender
[  9]   0.00-10.00  sec   256 MBytes   215 Mbits/sec
receiver
[ 11]   0.00-10.02  sec   165 MBytes   138 Mbits/sec  237             sender
[ 11]   0.00-10.00  sec   161 MBytes   135 Mbits/sec
receiver
[ 13]   0.00-10.02  sec   172 MBytes   144 Mbits/sec  220             sender
[ 13]   0.00-10.00  sec   169 MBytes   142 Mbits/sec
receiver
[SUM]   0.00-10.02  sec  1.08 GBytes   930 Mbits/sec  881             sender
[SUM]   0.00-10.00  sec  1.07 GBytes   917 Mbits/sec
receiver

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
