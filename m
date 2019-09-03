Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3504BA65B6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 11:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B617287277;
	Tue,  3 Sep 2019 09:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vRYczHub2reY; Tue,  3 Sep 2019 09:39:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56D8387673;
	Tue,  3 Sep 2019 09:39:42 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B4281BF28E
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 09:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6733E84D0A
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 09:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6YYY4ErVMh6t for <intel-wired-lan@osuosl.org>;
 Tue,  3 Sep 2019 09:39:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8353A84BB6
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 09:39:38 +0000 (UTC)
Received: from rabammel.molgen.mpg.de (rabammel.molgen.mpg.de [141.14.30.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2448A20225734;
 Tue,  3 Sep 2019 11:39:36 +0200 (CEST)
To: Tomas Winkler <tomas.winkler@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
 <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
 <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
 <f6b7b539ece1ba352c60c6dc976a3ce2@mirality.co.nz>
 <0300439f389950a9f9baaaaf5e3ea697@mirality.co.nz>
 <aafb4ac9-6825-300c-6dee-1b603c09e373@molgen.mpg.de>
 <20190903092046.GB12325@kroah.com>
 <5B8DA87D05A7694D9FA63FD143655C1B9DCAC1FF@hasmsx108.ger.corp.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f5b988f9-25cf-db4a-53f5-9bb7edc8fb51@molgen.mpg.de>
Date: Tue, 3 Sep 2019 11:39:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <5B8DA87D05A7694D9FA63FD143655C1B9DCAC1FF@hasmsx108.ger.corp.intel.com>
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
Cc: intel-wired-lan@osuosl.org, Alexander Usyskin <alexander.usyskin@intel.com>,
 Rafael J Wysocki <rafael.j.wysocki@intel.com>,
 Gavin Lambert <intel@mirality.co.nz>
Content-Type: multipart/mixed; boundary="===============0721085433941665660=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a cryptographically signed message in MIME format.

--===============0721085433941665660==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms020806020002050903040605"

This is a cryptographically signed message in MIME format.

--------------ms020806020002050903040605
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Dear Tomas,


On 2019-09-03 11:28, Winkler, Tomas wrote:

>> On Tue, Sep 03, 2019 at 10:35:30AM +0200, Paul Menzel wrote:

>>> On 03.09.19 09:56, Gavin Lambert wrote:
>>>> On 2019-08-20 14:15, I wrote:
>>>>> Does anyone have any ideas about this?=C2=A0 Either towards further=

>>>>> investigation or to a possible resolution?
>>>>>
>>>>> This is at the point of hardware internals now, so I have no idea
>>>>> how to proceed in either area.
>>>>
>>>> To recap (plus some new info):
>>>>
>>>> 1. I am using a kernel module which uses the code from the e1000e
>>>> driver to communicate with the hardware without actually registering=

>>>> it as a Linux netdev.=C2=A0 (This is partly because it can get used =
in a
>>>> Xenomai context outside of Linux itself, although I'm not doing that=

>>>> myself.) This historically works fine.
>>>>
>>>> 2. On certain Linux versions, I encountered an issue where
>>>> disconnecting the network cable and reconnecting it almost always
>>>> results in not being able to send any packets.=C2=A0 (I cannot deter=
mine
>>>> if receiving packets works in this case, as the network design will
>>>> not receive packets unless some are sent first.)=C2=A0 Restarting th=
e
>>>> driver (rmmod+modprobe) does recover from this case (until the next
>>>> link loss), but simply replugging the cable never does.
>>>>
>>>> 3. The problem was observed with both I219-V and I219-LM (on
>>>> motherboard), but was *not* observed with 82571EB (PCIE).=C2=A0 The
>>>> problem was not observed with a motherboard igb-based I211.=C2=A0 I
>>>> suspect the issue is limited to motherboard-based e1000e adapters.
>>>> (Or perhaps there's something different about how the IGBs are
>>>> internally connected.)
>>>>
>>>> 4. The problem does not occur when the e1000e driver is registered
>>>> "normally" as a Linux netdev.
>>>>
>>>> 5. The problem was introduced by "mei: me: allow runtime pm for
>>>> platform with D0i3" (which has been backported to 4.4+, as far as I =
can
>> tell).
>>>> Excluding this commit reliably resolves the issue and including it
>>>> reliably breaks it.
>>>
>>> The commit hash in the master branch is
>>> cc365dcf0e56271bedf3de95f88922abe248e951 and is there since v4.16-rc1=
=2E
>>>
>>> Strange, that it is in 4.4 and 4.9, as it was only tagged for v4.13+.=

>>>
>>>> 6. Applying the previously suggested patch
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.=

>>>> git/commit/drivers/net/ethernet/intel/e1000e?id=3Ddef4ec6dce393e2136=
b6
>>>> 2a05712f35a7fa5f5e56 has no effect; the E1000_STATUS_PCIM_STATE bit
>>>> is not set when the issue occurs.
>>>>
>>>> 7. Given the content of the change in #5, I assumed that the problem=

>>>> was power-management related, perhaps a side effect of the e1000e
>>>> driver not being registered as a netdev.=C2=A0 (So perhaps something=

>>>> thinks that no devices are in use and turns something off?)
>>>>
>>>> 8. I've previously posted register dumps from an e1000e in both the
>>>> "normal" and "link up but not transmitting" states.=C2=A0 They seeme=
d
>>>> very similar, but as I'm not familiar with the register meanings I
>>>> may have overlooked something significant.=C2=A0 (Note that the dump=
s
>>>> were captured inside the watchdog task, when it detects link up but
>>>> before it sets
>>>> E1000_TCTL_EN.)
>>>>
>>>> 9. I enabled debug logging in the mei driver; it logs a couple of
>>>> runtime_idles and then a runtime_suspend during system startup.=C2=A0=
 (I
>>>> added a log to runtime_resume that is missing in the driver source,
>>>> but it appears this does not get called in my scenario.)=C2=A0 Note =
that
>>>> the e1000e driver is still working ok after this.. at least at first=
=2E
>>>>
>>>> 10. "cat /sys/bus/devices/pci0000:00/0000:00:16.0/power/runtime_stat=
us"
>>>> =3D> "suspended"
>>>>  =C2=A0=C2=A0=C2=A0 "cat
>>>>
>> /sys/bus/devices/pci0000:00/0000:00:16.0/mei/mei0/power/runtime_status=
"
>>>> =3D> "unsupported"
>>>>  =C2=A0=C2=A0=C2=A0 "cat /sys/bus/devices/pci0000:00/0000:00:1f.0/po=
wer/runtime_status"
>>>> =3D> "active"
>>>>  =C2=A0=C2=A0=C2=A0 "cat /sys/bus/devices/pci0000:00/0000:00:1f.6/po=
wer/runtime_status"
>>>> =3D> "active" (this is the actual NIC)
>>>>  =C2=A0=C2=A0=C2=A0 These don't change between the working and non-w=
orking states.
>>>> (It's possible that some other device does, but I haven't found it
>>>> yet.)
>>>>
>>>> 11. I did try forcing the above to unsuspend, but this did not
>>>> recover from the e1000e issue.
>>>>
>>>> 12. I also tried calling e1000e_reset on link-down.=C2=A0 This produ=
ces
>>>> different register output on link-up, but doesn't recover from the
>>>> issue.
>>>>
>>>> 13. I also tried recompiling the kernel with CONFIG_PM disabled (no
>>>> power management).=C2=A0 This *does* resolve the problem (but is a v=
ery
>>>> big hammer).
>>>>
>>>> 14. Possibly also of interest is that if I do *both* #12 and #13,
>>>> the problem remains (suggesting #12 was counter-productive).
>>>>
>>>> FYI the hardware on one of the test machines is as follows:
>>>>  =C2=A0=C2=A0=C2=A0 00:00.0 Host bridge: Intel Corporation Device 59=
1f (rev 05)
>>>>  =C2=A0=C2=A0=C2=A0 00:01.0 PCI bridge: Intel Corporation Skylake PC=
Ie Controller
>>>> (x16) (rev 05)
>>>>  =C2=A0=C2=A0=C2=A0 00:02.0 VGA compatible controller: Intel Corpora=
tion Device
>>>> 5912 (rev 04)
>>>>  =C2=A0=C2=A0=C2=A0 00:08.0 System peripheral: Intel Corporation Sky=
lake Gaussian
>>>> Mixture Model
>>>>  =C2=A0=C2=A0=C2=A0 00:14.0 USB controller: Intel Corporation Sunris=
e Point-H USB
>>>> 3.0  xHCI Controller (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:14.2 Signal processing controller: Intel Corp=
oration Sunrise
>>>> Point-H Thermal subsystem (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:15.0 Signal processing controller: Intel Corp=
oration Sunrise
>>>> Point-H Serial IO I2C Controller #0 (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:15.1 Signal processing controller: Intel Corp=
oration Sunrise
>>>> Point-H Serial IO I2C Controller #1 (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:16.0 Communication controller: Intel Corporat=
ion Sunrise
>>>> Point-H CSME HECI #1 (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:17.0 SATA controller: Intel Corporation Sunri=
se Point-H SATA
>>>> controller [AHCI mode] (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:1b.0 PCI bridge: Intel Corporation Sunrise Po=
int-H PCI Root
>>>> Port #19 (rev f1)
>>>>  =C2=A0=C2=A0=C2=A0 00:1b.3 PCI bridge: Intel Corporation Sunrise Po=
int-H PCI Root
>>>> Port #20 (rev f1)
>>>>  =C2=A0=C2=A0=C2=A0 00:1c.0 PCI bridge: Intel Corporation Sunrise Po=
int-H PCI
>>>> Express Root Port #5 (rev f1)
>>>>  =C2=A0=C2=A0=C2=A0 00:1d.0 PCI bridge: Intel Corporation Sunrise Po=
int-H PCI
>>>> Express Root Port #11 (rev f1)
>>>>  =C2=A0=C2=A0=C2=A0 00:1e.0 Signal processing controller: Intel Corp=
oration Sunrise
>>>> Point-H Serial IO UART #0 (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:1f.0 ISA bridge: Intel Corporation Sunrise Po=
int-H LPC
>>>> Controller (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:1f.2 Memory controller: Intel Corporation Sun=
rise Point-H
>>>> PMC (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:1f.4 SMBus: Intel Corporation Sunrise Point-H=
 SMBus (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 00:1f.6 Ethernet controller: Intel Corporation E=
thernet
>>>> Connection (2) I219-LM (rev 31)
>>>>  =C2=A0=C2=A0=C2=A0 02:00.0 Ethernet controller: Intel Corporation I=
211 Gigabit
>>>> Network Connection (rev 03)
>>>>  =C2=A0=C2=A0=C2=A0 03:00.0 Ethernet controller: Intel Corporation I=
211 Gigabit
>>>> Network Connection (rev 03)
>>>>  =C2=A0=C2=A0=C2=A0 05:00.0 Ethernet controller: Intel Corporation I=
211 Gigabit
>>>> Network Connection (rev 03)

(Tomas, your MUA wrapped the lines messing up the formatting.)

>>>> I'm happy to add any code instrumentation or make any other changes
>>>> needed to locate and resolve the problem, and I can readily
>>>> reproduce it
>>>> -- I'm just at a complete loss as to where to start looking, and am
>>>> still hoping for some suggestions in that regard.
>>>>
>>>> If there's anywhere (or anyone) else better for me to talk to about
>>>> this issue, please let me know that too.
>>>
>>> It is not clear to me, if this is still reproducible on Linux 5.3-rc7=

>>> (or Linus=E2=80=99 master branch).
>>>
>>> If it is, this is a definitely regression, and the commits need to be=

>>> reverted due to Linux=E2=80=99 no regression policy.
>>
>> So I should revert this from 4.4.y and 4.9.y?
>=20
> The issue is not in mei driver, it is in e1000 driver, I my best
> knowledge there should be fix, please Vitaly can it be backported to
> older kernels?

Tomas, backporting the commit supposedly fixing this, does *not* help.
Also, it does not matter for the no regression policy.

Let=E2=80=99s wait until Gavin can confirm if it is happening with Linux =
5.3-rc7.


Kind regards,

Paul


--------------ms020806020002050903040605
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
EFowggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWNMIIEdaADAgECAgwcOtRQhH7u81j4jncwDQYJKoZIhvcNAQELBQAwgZUx
CzAJBgNVBAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1
dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNV
BAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjAeFw0xNjExMDMxNTI0
NDhaFw0zMTAyMjIyMzU5NTlaMGoxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAP
BgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxhbmNrLUdlc2VsbHNjaGFmdDEVMBMG
A1UEAwwMTVBHIENBIC0gRzAyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnhx4
59Lh4WqgOs/Md04XxU2yFtfM15ZuJV0PZP7BmqSJKLLPyqmOrADfNdJ5PIGBto2JBhtRRBHd
G0GROOvTRHjzOga95WOTeura79T21FWwwAwa29OFnD3ZplQs6HgdwQrZWNi1WHNJxn/4mA19
rNEBUc5urSIpZPvZi5XmlF3v3JHOlx3KWV7mUteB4pwEEfGTg4npPAJbp2o7arxQdoIq+Pu2
OsvqhD7Rk4QeaX+EM1QS4lqd1otW4hE70h/ODPy1xffgbZiuotWQLC6nIwa65Qv6byqlIX0q
Zuu99Vsu+r3sWYsL5SBkgecNI7fMJ5tfHrjoxfrKl/ErTAt8GQIDAQABo4ICBTCCAgEwEgYD
VR0TAQH/BAgwBgEB/wIBATAOBgNVHQ8BAf8EBAMCAQYwKQYDVR0gBCIwIDANBgsrBgEEAYGt
IYIsHjAPBg0rBgEEAYGtIYIsAQEEMB0GA1UdDgQWBBTEiKUH7rh7qgwTv9opdGNSG0lwFjAf
BgNVHSMEGDAWgBST49gyJtrV8UqlkUrg6kviogzP4TCBjwYDVR0fBIGHMIGEMECgPqA8hjpo
dHRwOi8vY2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jcmwvY2Fjcmwu
Y3JsMECgPqA8hjpodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1
Yi9jcmwvY2FjcmwuY3JsMIHdBggrBgEFBQcBAQSB0DCBzTAzBggrBgEFBQcwAYYnaHR0cDov
L29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEoGCCsGAQUFBzAChj5odHRwOi8v
Y2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNy
dDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1j
YS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZIhvcNAQELBQADggEBABLpeD5FygzqOjj+
/lAOy20UQOGWlx0RMuPcI4nuyFT8SGmK9lD7QCg/HoaJlfU/r78ex+SEide326evlFAoJXIF
jVyzNltDhpMKrPIDuh2N12zyn1EtagqPL6hu4pVRzcBpl/F2HCvtmMx5K4WN1L1fmHWLcSap
dhXLvAZ9RG/B3rqyULLSNN8xHXYXpmtvG0VGJAndZ+lj+BH7uvd3nHWnXEHC2q7iQlDUqg0a
wIqWJgdLlx1Q8Dg/sodv0m+LN0kOzGvVDRCmowBdWGhhusD+duKV66pBl+qhC+4LipariWaM
qK5ppMQROATjYeNRvwI+nDcEXr2vDaKmdbxgDVwwggWvMIIEl6ADAgECAgweKlJIhfynPMVG
/KIwDQYJKoZIhvcNAQELBQAwajELMAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVybjERMA8G
A1UEBwwITXVlbmNoZW4xIDAeBgNVBAoMF01heC1QbGFuY2stR2VzZWxsc2NoYWZ0MRUwEwYD
VQQDDAxNUEcgQ0EgLSBHMDIwHhcNMTcxMTE0MTEzNDE2WhcNMjAxMTEzMTEzNDE2WjCBizEL
MAkGA1UEBhMCREUxIDAeBgNVBAoMF01heC1QbGFuY2stR2VzZWxsc2NoYWZ0MTQwMgYDVQQL
DCtNYXgtUGxhbmNrLUluc3RpdHV0IGZ1ZXIgbW9sZWt1bGFyZSBHZW5ldGlrMQ4wDAYDVQQL
DAVNUElNRzEUMBIGA1UEAwwLUGF1bCBNZW56ZWwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDIh/UR/AX/YQ48VWWDMLTYtXjYJyhRHMc81ZHMMoaoG66lWB9MtKRTnB5lovLZ
enTIUyPsCrMhTqV9CWzDf6v9gOTWVxHEYqrUwK5H1gx4XoK81nfV8oGV4EKuVmmikTXiztGz
peyDmOY8o/EFNWP7YuRkY/lPQJQBeBHYq9AYIgX4StuXu83nusq4MDydygVOeZC15ts0tv3/
6WmibmZd1OZRqxDOkoBbY3Djx6lERohs3IKS6RKiI7e90rCSy9rtidJBOvaQS9wvtOSKPx0a
+2pAgJEVzZFjOAfBcXydXtqXhcpOi2VCyl+7+LnnTz016JJLsCBuWEcB3kP9nJYNAgMBAAGj
ggIxMIICLTAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcD
AgYIKwYBBQUHAwQwHQYDVR0OBBYEFHM0Mc3XjMLlhWpp4JufRELL4A/qMB8GA1UdIwQYMBaA
FMSIpQfuuHuqDBO/2il0Y1IbSXAWMCAGA1UdEQQZMBeBFXBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZTB9BgNVHR8EdjB0MDigNqA0hjJodHRwOi8vY2RwMS5wY2EuZGZuLmRlL21wZy1nMi1jYS9w
dWIvY3JsL2NhY3JsLmNybDA4oDagNIYyaHR0cDovL2NkcDIucGNhLmRmbi5kZS9tcGctZzIt
Y2EvcHViL2NybC9jYWNybC5jcmwwgc0GCCsGAQUFBwEBBIHAMIG9MDMGCCsGAQUFBzABhido
dHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVyL09DU1AwQgYIKwYBBQUHMAKGNmh0
dHA6Ly9jZHAxLnBjYS5kZm4uZGUvbXBnLWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDBC
BggrBgEFBQcwAoY2aHR0cDovL2NkcDIucGNhLmRmbi5kZS9tcGctZzItY2EvcHViL2NhY2Vy
dC9jYWNlcnQuY3J0MEAGA1UdIAQ5MDcwDwYNKwYBBAGBrSGCLAEBBDARBg8rBgEEAYGtIYIs
AQEEAwYwEQYPKwYBBAGBrSGCLAIBBAMGMA0GCSqGSIb3DQEBCwUAA4IBAQCQs6bUDROpFO2F
Qz2FMgrdb39VEo8P3DhmpqkaIMC5ZurGbbAL/tAR6lpe4af682nEOJ7VW86ilsIJgm1j0ueY
aOuL8jrN4X7IF/8KdZnnNnImW3QVni6TCcc+7+ggci9JHtt0IDCj5vPJBpP/dKXLCN4M+exl
GXYpfHgxh8gclJPY1rquhQrihCzHfKB01w9h9tWZDVMtSoy9EUJFhCXw7mYUsvBeJwZesN2B
fndPkrXx6XWDdU3S1LyKgHlLIFtarLFm2Hb5zAUR33h+26cN6ohcGqGEEzgIG8tXS8gztEaj
1s2RyzmKd4SXTkKR3GhkZNVWy+gM68J7jP6zzN+cMYIDmjCCA5YCAQEwejBqMQswCQYDVQQG
EwJERTEPMA0GA1UECAwGQmF5ZXJuMREwDwYDVQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4
LVBsYW5jay1HZXNlbGxzY2hhZnQxFTATBgNVBAMMDE1QRyBDQSAtIEcwMgIMHipSSIX8pzzF
RvyiMA0GCWCGSAFlAwQCAQUAoIIB8TAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
SIb3DQEJBTEPFw0xOTA5MDMwOTM5MzVaMC8GCSqGSIb3DQEJBDEiBCAIVFVvKHFaxvxAsfUr
Um9ZK9jasWQ91AhCJgpBUc/mWDBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcG
BSsOAwIHMA0GCCqGSIb3DQMCAgEoMIGJBgkrBgEEAYI3EAQxfDB6MGoxCzAJBgNVBAYTAkRF
MQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxh
bmNrLUdlc2VsbHNjaGFmdDEVMBMGA1UEAwwMTVBHIENBIC0gRzAyAgweKlJIhfynPMVG/KIw
gYsGCyqGSIb3DQEJEAILMXygejBqMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMREw
DwYDVQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4LVBsYW5jay1HZXNlbGxzY2hhZnQxFTAT
BgNVBAMMDE1QRyBDQSAtIEcwMgIMHipSSIX8pzzFRvyiMA0GCSqGSIb3DQEBAQUABIIBADcF
poXkvTBEf47AGoIpOlL3yHVXS4eYqYjSTVeYfe6Jhrw1bAMIQG9apfqIOXrLfMnRFl0kRjqu
oHlGvnQ7dAFP26nm1USVe7ShW+OJEmnmfAgFV7ae3R2h3E9RPEDN3eSmR9d7xuhmyIElrxbU
gw7Dh3oyg4zPeoqguO/1YFUnnHLA0SF6QcoIhxtxGFYCxfN/BCI43D2H5CPT4LVkkgMG4j0T
ul6leukg9RAOxW9ZXNTFwRQ2C6kf6WukIm6mtzzC5Ajctb8wxPXf0E8jMwc3Q3M941teTqF8
BKdJpcoYRVpez38DLXDq0FL+G+yKHoFZnf7IxNiJ1dN9NAlvlo4AAAAAAAA=
--------------ms020806020002050903040605--

--===============0721085433941665660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0721085433941665660==--
